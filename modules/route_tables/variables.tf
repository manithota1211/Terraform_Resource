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