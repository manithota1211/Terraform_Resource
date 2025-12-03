# public route table values

variable "public_rt" {
    description = "the name for route table"
    type = string
}
variable "public_rt_cidr" {
    description = "the cidr for public route table"
    type = string
}




# private route table values

variable "private_rt" {
    description = "the name for private route table"
    type = string
}
variable "private_rt_cidr" {
    description = "the cidr for privte rt"
    type = string
}

variable "vpc_id" {
    description = "the vpc id for rt"
    type = string
}

variable "nat_gateway" {
    description = "the tag name for nat gateway"
    type = string
}


# igw_id

variable "internet_gateway_id" {
    description = "the igw id foe rt"
    type = string
}

# subnet association

variable "public_subnet_id" {
    description = "the subnet id for route association"
    type = string
}


variable "private_subnet_id" {
    description = "the subnet id for route association"
    type = string
}