resource "aws_lb" "this" {
  name               = var.name
  internal           = var.scheme == "internal" ? true : false
  load_balancer_type = "application"
  subnets            = var.subnet_ids
  security_groups    = var.security_group_ids

  tags = {
    Name = var.name
  }
}

resource "aws_lb_target_group" "tg" {
  name     = "${var.name}-tg"
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id 
  health_check {
    path                = "/"
    matcher             = "200"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  tags = {
    Name = "${var.name}-tg"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.port
  protocol          = var.protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}