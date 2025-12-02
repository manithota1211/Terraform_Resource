variable "vpc_name" {
    description = "the name for vpc"
    type = string
}
variable "vpc_cidr_block" {
    description = "the cidr block for vpc"
    type = string
}
variable "vpc_instance_tenancy" {
    description = "the instance tenancy for vpc"
    type = string
}




# variables for public subnet

variable "public_subnet_name" {
    description = "the name for the public subnet"
    type = string
}
variable "public_subnet_cidr_block" {
    description = "the cidr block for public subnet"
    type = string
}
variable "public_availability_zone" {
    description = "the availability zone for subnet"
    type = string
}



# variables for private subnet

variable "private_subnet_name" {
    description = "the subnet name for private subnet"
    type = string
}
variable "private_subnet_cidr_block" {
    description = "the cidr block for private subnet"
    type = string
}
variable "private_availability_zone" {
    description = "the availability zone for private subnet"
    type = string
}


# internet_gateway values

variable "internet_gateway" {
    description = "the igw for internet access"
    type = string
}

