variable "name" { type = string }
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "scheme" { type = string }
variable "port" { 
    type = number 
    default = 80 }
variable "protocol" { 
type = string 
default = "HTTP" }
variable "vpc_id" { type = string }  # required for target group vpc_id
