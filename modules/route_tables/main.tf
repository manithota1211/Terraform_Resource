resource "aws_route_table" "public_rt" {
    vpc_id = var.vpc_id

    route {
        cidr_block = var.public_rt_cidr
        gateway_id = var.internet_gateway_id
    }
    tags = {
        Name = var.public_rt
    }
}

resource "aws_route_table" "private_rt" {
    vpc_id = var.vpc_id
    route {
        cidr_block = var.private_rt_cidr
        gateway_id = var.nat_gateway
    }
    tags = {
        Name = var.private_rt
    }
}

# subnet association

# creating public route table associations

resource "aws_route_table_association" "public_subnet" {
    subnet_id = var.public_subnet_id
    route_table_id = aws_route_table.public_rt.id
}

# creating private route table associations

resource "aws_route_table_association" "private_subnet_bar" {
    subnet_id = var.private_subnet_id
    route_table_id = aws_route_table.private_rt.id
}