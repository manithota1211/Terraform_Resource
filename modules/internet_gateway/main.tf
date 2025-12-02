resource "internet_gateway" "main_igw" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "var.internet_gateway"
    }
}
