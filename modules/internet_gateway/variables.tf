variable "internet_gateway" {
    description = "the igw for internet access"
    type = string
}

variable "vpc_id" {
  description = "The VPC ID where the Internet Gateway will be attached"
  type        = string
}
