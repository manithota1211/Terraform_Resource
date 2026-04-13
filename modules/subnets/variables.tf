# # variables for public subnet

# variable "public_subnet_id" {
#     description = "the name for the public subnet"
#     type = string
# }
# variable "public_subnet_cidr_block" {
#     description = "the cidr block for public subnet"
#     type = string
# }
# variable "public_availability_zone" {
#     description = "the availability zone for subnet"
#     type = string
# }




# # variables for private subnet

# variable "private_subnet_id" {
#     description = "the subnet name for private subnet"
#     type = string
# }
# variable "private_subnet_cidr_block" {
#     description = "the cidr block for private subnet"
#     type = string
# }
# variable "private_availability_zone" {
#     description = "the availability zone for private subnet"
#     type = string
# }

# variable "vpc_id" {
#     description = "this is vpc id"
#     type = string
# }



# variable "db_subnet_cidr_block" {
#     description = "the cidr block for private subnet"
#     type = string
# }
# variable "db_availability_zone" {
#     description = "the availability zone for private subnet"
#     type = string
# }

# variable "db_subnet_id" {
#     description = "the subnet name for private subnet"
#     type = string
# }

variable "public_subnet_id" {}
variable "public_subnet_cidr_block" {}
variable "public_availability_zone" {}

variable "private_subnet_id" {}
variable "private_subnet_cidr_block" {}
variable "private_availability_zone" {}
variable "vpc_id" {}

variable "db_subnet_id" {}
variable "db_availability_zone" {}
variable "db_subnet_cidr_block" {}

