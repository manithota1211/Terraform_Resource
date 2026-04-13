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
  type = list(string)
}

variable "public_subnet_cidr_block" {
  type = list(string)
}

variable "public_availability_zone" {
  type = list(string)
}

variable "private_subnet_id" {
  type = list(string)
}

variable "private_subnet_cidr_block" {
  type = list(string)
}

variable "private_availability_zone" {
  type = list(string)
}

variable "db_subnet_id" {
  type = list(string)
}

variable "db_subnet_cidr_block" {
  type = list(string)
}

variable "db_availability_zone" {
  type = list(string)
}


variable "public_rt" {
  description = "Name of the public route table"
  type        = string
}

variable "public_rt_cidr" {
  description = "CIDR block for public route table (usually 0.0.0.0/0)"
  type        = string
}

variable "private_rt" {
  description = "Name of the private route table"
  type        = string
}

variable "private_rt_cidr" {
  description = "CIDR block for private route table (usually 0.0.0.0/0 via NAT)"
  type        = string
}




# # nat gw variables


variable "eip_name" {
  type = string
}

variable "nat_gateway_name" {
  type = string
}


variable "key_pair_name" {
    description = "the key name for ec2 instances"
    type = string
}

variable "public_key" {
    description = "the key name for ec2 instances"
    type = string
}

## security groups

variable "admin_ip_cidr" {
  description = "The CIDR block for admin SSH access"
  type        = string
  default     = "0.0.0.0/0"
}



# variable "web_ami_id" { type = string }
# variable "app_ami_id" { type = string }
# variable "web_instance_type" { 
# type = string 
# default = "t3.micro" 
# }
# variable "app_instance_type" { 
# type = string 
# default = "t3.micro" }

# variable "web_asg_min" { 
# type = number default = 1 }
# variable "web_asg_desired" { type = number default = 1 }
# variable "web_asg_max" { type = number default = 2 }

# variable "app_asg_min" { type = number default = 1 }
# variable "app_asg_desired" { type = number default = 1 }
# variable "app_asg_max" { type = number default = 2 }

# web_instance_type = "t3.micro"
# app_instance_type = "t3.micro"

# # ASG sizes
# web_asg_min = 1
# web_asg_desired = 1
# web_asg_max = 2

# app_asg_min = 1
# app_asg_desired = 1
# app_asg_max = 2


# # public ec2 instance variables
# # example of simple variable types

# variable "instance_name" {
#     description = "the name tag for ec2 instance"
#     type = string
# }
# variable "public_instance_type" {
#     description = "the instance type for ec2 instance"
#     type = string
# }
# variable "public_instance_ami_id" {
#     description = "the ami id for ec2 instance"
#     type = string
# }
# variable "associate_public_ip_address" {
#     description = "wheather to associate public ip"
#     type = bool

# }

# variable "instance_count" {
#     description = "the count of ec2 instances"
#     type = number
#     default = 1
# }



# # private instance variables

# variable "private_instance_name" {
#     description = "the name tag for ec2 instance"
#     type = string
# }
# variable "private_instance_type" {
#     description = "the instance type for ec2 instance"
#     type = string
# }
# variable "private_instance_ami_id" {
#     description = "the ami id for ec2 instance"
#     type = string
# }
# variable "associate_private_ip_address" {
#     description = "wheather to associate public ip"
#     type = bool

# }

# variable "private_instance_count" {
#     description = "the count of ec2 instances"
#     type = number
#     default = 1
# }

