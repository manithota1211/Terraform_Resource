# vpc values

vpc_name = "main_vpc"

vpc_instance_tenancy = "default"

vpc_cidr_block = "10.0.0.0/16"

# public subnet values

public_subnet_cidr_block = "10.0.1.0/24"
public_subnet_id = "public_subnet"
public_availability_zone = "us-east-1a"

# private subnet values

private_subnet_cidr_block = "10.0.2.0/24"
private_subnet_id = "private_subnet"
private_availability_zone = "us-east-1b"


# internet gateway values

internet_gateway_id = "mani_igw"


# nat gateway values

# eip values
eip_name = "mani_eip"

nat_gateway = "nat_gateway"


# public route table values
public_rt = "public_rt"
public_rt_cidr = "0.0.0.0/0"

# private route table values

private_rt = "private_rt"
private_rt_cidr = "0.0.0.0/0"


# key pair 

key_pair_name = "mani-key"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDSlOYPWl41mMFGRQ6olPDk94R5nIHIIRG5kOM8m/3E1Czqupj/AaqJxwQkhC/S+V2TeTyjOp+wKMmIGOXYLt53QQfACgRy7Hkv0o1eo3mfHOSDVAiZ1O9bms8ZglO9rgZQQPXvXCQdYo3ldT0/oJ681nnHhUHEyxrvjuf6l0XDEkhEGo6ZnKIxwU77L33jSRq7b+6OdpahX4DWOXsQ6bmoYgpwJZdMwHDOGtFr7vh5ZE1ep3HmtPzi8sYD3Ga2OALG5dI75ljhWfTok+9wzrwh3IyUGhmTkwxtpQUMj3f47Lel3iJkw4Y1qZ+SncBFyOJLEAtI2xzgzdd932eWl0XM/4roqdSzOWkoUIXPzRQ3xwMRQ/5J/tGeGZ8VAYUD25FXwtXz70p3XpZdLB+0C01uenO1kebTbI2UHkf/ux2Cux9/66JyyiedMCTUNjveyZqk6d7ZDWjyZi+RafyojQblqalc2Y2XxTjt5cfuQ4QVqI/ScduZq799yaGYl7rhPVObZ3mj+MqDNFnxIN0TCWuGzU/58PHZz4+0UEwGDCx90WgpNxV3v5E+ot+jX8Rh3HnNbNLHZmGwz3pKjMM5oFeIlYrDpwDmYAwXtW2kI0znj/1K3GXH42VYhj52QpXIkueRZ9etTSpxXjZfG8Dk7zrDzig7zgV88QV7T8HOg355Bw== mani@thotamani"


# security group values

security_group_name = "main_sg"


instance_name = "public_instance"
public_instance_type = "t3.medium"
public_instance_ami_id = "ami-0ecb62995f68bb549"
associate_public_ip_address = true



# private instance values

private_instance_name = "public_instance"
private_instance_type = "t3.medium"
private_instance_ami_id = "ami-0ecb62995f68bb549"
associate_private_ip_address = true
