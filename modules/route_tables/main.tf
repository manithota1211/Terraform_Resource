resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = var.public_rt_cidr
        gateway_id = aws_internet_gateway.main_igw.id
    }
    tags = {
        Name = var.public_rt
    }
}

resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = var.private_rt_cidr
        gateway_id = aws_nat_gatewy.main.nat_gw.id
    }
    tags = {
        Name = var.private_rt
    }
}