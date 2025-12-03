output "key_pair_name" {
    description = "this is key pair id"
    value = aws_key_pair.deployer.id
}
variable "public_key" {
  description = "Public key to use for the key pair"
  type        = string
}