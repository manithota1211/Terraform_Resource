output "security_group_id" {
    description = "this is security group id"
    value = aws_security_group.main_sg.id
}