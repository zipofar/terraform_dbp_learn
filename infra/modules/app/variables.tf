variable "name" {
  description = "App Name"
}

variable "environment" {
  description = "Environment"
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

variable "container_port" {
  description = "Container Port"
}

variable "vpc_id" {
  description = "VPC Id"
}

variable "public_subnets" {
  description = "Public Subnets"
}

variable "ecs_sg" {
  description = "ECS Security Group"
}

variable "alb_sg" {
  description = "ALB Security Group"
}

variable "private_subnets" {
  description = "Private Subnets"
}

variable "region" {
  description = "Region"
}

variable "variables" {
  description = "Variables"
}

variable "secrets" {
  description = "Secrets"
}

variable "domain" {
  description = "Domain"
}
