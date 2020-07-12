output "aws_secuirty_group_http_server_details" {
  value = aws_security_group.http_server_sg
}
output "aws_server_public_dns" {
    value = aws_instance.http_server.public_dns
}