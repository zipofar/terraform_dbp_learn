variable "region" {
  description = "aws region"
  type = string
}

variable "cidr" {
  description = "The CIDR block for the VPC."
}

variable "public_subnets" {
  description = "List of public subnets"
}

variable "private_subnets" {
  description = "List of private subnets"
}

variable "availability_zones" {
  description = "List of availability zones"
}

variable "container_port" {
  description = "Container Port"
}

variable "project" {
  description = "Project Name"
}

variable "environment" {
  description = "Environment"
}

variable "vpc_id" {
  description = "VPC Id"
}

variable "app_name" {
  description = "VPC Id"
}

variable "image" {
  description = "Docker Image Path"
}

variable "task_cpu" {
  description = "Task CPU"
}

variable "task_memory" {
  description = "Task Memory"
}

variable "secrets" {
  description = "Secrets"
}
