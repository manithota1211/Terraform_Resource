variable "vpc_id" {
  description = "VPC ID where security group will be created"
  type        = string
}

variable "security_group_name" {
    description = "name for the sg"
    type = string
}