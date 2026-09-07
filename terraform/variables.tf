variable "aws_region" {
  description = "Região AWS onde os recursos serão provisionados."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto utilizado para identificação e tags dos recursos."
  type        = string
  default     = "aws-terraform-infrastructure"
}

variable "environment" {
  description = "Ambiente da infraestrutura."
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "Bloco CIDR utilizado pela VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Bloco CIDR utilizado pela subnet pública."
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "Tipo da instância EC2."
  type        = string
  default     = "t3.micro"
}

variable "allowed_http_cidr" {
  description = "CIDR autorizado a acessar a aplicação via HTTP."
  type        = string
  default     = "0.0.0.0/0"
}