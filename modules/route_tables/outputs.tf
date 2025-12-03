output "public_rt_id" {
    description = "this is public route id"
    value = aws_route_table.public_rt.id
}

output "private_rt_id" {
    description = "this is private route id"
    value = aws_route_table.private_rt.id
}
