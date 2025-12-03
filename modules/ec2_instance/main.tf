# public instance 

resource "aws_instance" "web_server" {
    ami = var.public_instance_ami_id
    count = var.instance_count
    instance_type = var.public_instance_type
    subnet_id = var.public_subnet_id
    vpc_security_group_ids = [ var.security_group_id ]
    key_name = var.key_pair_name
    associate_public_ip_address = var.associate_public_ip_address

    tags = {
        Name= var.instance_name
    }
}


resource "aws_instance" "private_server" {
    ami = var.private_instance_ami_id
    count = var.private_instance_count
    instance_type = var.private_instance_type
    subnet_id = var.private_subnet_id
    vpc_security_group_ids = [ var.security_group_id ]
    key_name = var.key_pair_name
    associate_public_ip_address = var.associate_private_ip_address

    tags = {
        Name= var.instance_name
    }
}