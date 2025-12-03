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

variable "public_subnet_id" {
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

variable "private_subnet_id" {
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


# internet_gateway variables

variable "internet_gateway_id" {
    description = "the igw for internet access"
    type = string
}

# nat gw variables

variable "nat_gateway" {
    description = "the id for nat gw "
    type = string
}


# eip variables
variable "eip_name" {
    description = "the tag name for eip"
    type = string
}


# public route table variables

variable "public_rt" {
    description = "the name for route table"
    type = string
}
variable "public_rt_cidr" {
    description = "the cidr for public route table"
    type = string
}

# private route table variables

variable "private_rt" {
    description = "the name for private route table"
    type = string
}
variable "private_rt_cidr" {
    description = "the cidr for privte rt"
    type = string
}


# key pair variables

variable "key_pair_name" {
    description = "the key name for ec2 instances"
    type = string
}

variable "public_key" {
    description = "the public key for ec2 instances"
    type = string
}

variable "security_group_name" {
    description = "the security group"
    type = string
}


# public ec2 instance variables
# example of simple variable types

variable "instance_name" {
    description = "the name tag for ec2 instance"
    type = string
}
variable "public_instance_type" {
    description = "the instance type for ec2 instance"
    type = string
}
variable "public_instance_ami_id" {
    description = "the ami id for ec2 instance"
    type = string
}
variable "associate_public_ip_address" {
    description = "wheather to associate public ip"
    type = bool

}

variable "instance_count" {
    description = "the count of ec2 instances"
    type = number
    default = 1
}



# private instance variables

variable "private_instance_name" {
    description = "the name tag for ec2 instance"
    type = string
}
variable "private_instance_type" {
    description = "the instance type for ec2 instance"
    type = string
}
variable "private_instance_ami_id" {
    description = "the ami id for ec2 instance"
    type = string
}
variable "associate_private_ip_address" {
    description = "wheather to associate public ip"
    type = bool

}

variable "private_instance_count" {
    description = "the count of ec2 instances"
    type = number
    default = 1
}

