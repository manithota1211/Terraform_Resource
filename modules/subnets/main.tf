resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet_cidr_block
    availability_zone = var_public_availability_zone
    tags = {
        Name = var_public_subnet
    }
}

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.private_subnet_cidr_block
    availability_zone = var.private_availability_zone
    tags = {
        Name = var_private_subnet
    }
}
