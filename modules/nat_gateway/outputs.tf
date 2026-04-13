output "nat_gateway" {
    description = "this is nat gateway  id"
    value = aws_nat_gateway.main_nat.id
}
output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.main_nat.id
}
