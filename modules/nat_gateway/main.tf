# eip resource

resource "aws_eip" "nat_ip" {
        domain = "vpc"
        tags = {
            Name = var.eip_name
        }
    }

resource "aws_nat_gateway" "main_nat" {
    subnet_id = var.public_subnet_id
    allocation_id = aws_eip.nat_ip.id
    tags = {
        Name = var.nat_gateway
    }

}
