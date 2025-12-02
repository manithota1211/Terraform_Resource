
resource "aws_nat_gateway" "main_nat" {
    allocation_id = aws_eip.nat_ip.id
    subnet_id = aws_subnet.public_subnet.id
    tags = {
        Name = var.ngw
    }

}

# creating eip and nat gateway

resource "aws_eip" "nat_ip" {
    tags = {
        Name = var.eip_name

    
    }
}