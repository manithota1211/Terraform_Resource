variable "vpc_id" {
  description = "The VPC ID where SGs will be created"
  type        = string
}

variable "admin_ip_cidr" {
  description = "Admin IP in CIDR notation (for SSH access)"
  type        = string
}

variable "app_port" {
  description = "Port for app servers to listen"
  type        = number
  default     = 8080
}

variable "db_port" {
  description = "Port for DB server (e.g., MySQL)"
  type        = number
  default     = 3306
}
