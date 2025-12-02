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
}

variable "key_pair_name" {
    description = "the key name for ec2 instances"
    type = string
}



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
}

variable "key_pair_name" {
    description = "the key name for ec2 instances"
    type = string
}