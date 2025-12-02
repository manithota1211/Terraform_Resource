output "nat_gateway_id" {
    description = "this is nat gateway  id"
    value = aws_nat_gateway.main_nat.id
}

output "eip_id" {
    description = "this is private route id"
    value = aws_eip.nat_ip.id
}