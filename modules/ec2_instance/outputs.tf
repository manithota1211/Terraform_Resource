output "public_instance_id" {
    description = "this public instance id"
    value = aws_instance.web_server.id
}

output "private_instance_id" {
    description = "this private instance id"
    value = aws_instance.private_server.id
}
