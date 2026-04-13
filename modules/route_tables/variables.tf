variable "vpc_id" {
  description = "VPC ID for the route tables"
  type        = string
}

variable "internet_gateway_id" {
  description = "Internet Gateway ID for public subnets"
  type        = string
}

variable "nat_gateway_id" {
  description = "NAT Gateway ID for private subnets"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}
