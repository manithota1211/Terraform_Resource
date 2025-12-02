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

# subnet association

# creating public route table associations

resource "aws_route_table_association" "public_subnet" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public_route.id
}

# creating private route table associations

resource "aws_route_table_association" "private_subnet_bar" {
    subnet_id = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.private_route.id
}