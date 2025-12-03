variable "nat_gateway" {
    description = "the tag name for nat gateway"
    type = string
}


# eip variables
variable "eip_name" {
    description = "the tag name for eip"
    type = string
}

variable "public_subnet_id" {
    description = "the subnet id sor nat gw"
    type = string
}
