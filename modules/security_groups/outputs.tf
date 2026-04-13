output "web_sg_id" {
  value       = aws_security_group.web_sg.id
  description = "ID of Web SG"
}

output "app_sg_id" {
  value       = aws_security_group.app_sg.id
  description = "ID of App SG"
}

output "db_sg_id" {
  value       = aws_security_group.db_sg.id
  description = "ID of DB SG"
}
