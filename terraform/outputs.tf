output "vpc_id" {
  description = "ID da VPC criada pelo Terraform."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID da subnet pública."
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID do Security Group da aplicação web."
  value       = aws_security_group.web.id
}

output "instance_id" {
  description = "ID da instância EC2."
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "Endereço IPv4 público da instância EC2."
  value       = aws_instance.web.public_ip
}

output "instance_public_dns" {
  description = "DNS público da instância EC2."
  value       = aws_instance.web.public_dns
}

output "application_url" {
  description = "URL pública da aplicação provisionada."
  value       = "http://${aws_instance.web.public_ip}"
}