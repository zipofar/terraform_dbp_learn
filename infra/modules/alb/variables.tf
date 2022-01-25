variable "name" {
  description = "Alb Name"
}

variable "environment" {
  description = "Environment"
}

variable "security_groups" {
  description = "Security Groups"
}

variable "subnets" {
  description = "Subnets"
}

variable "vpc_id" {
  description = "VPC Id"
}

variable "health_check_path" {
  description = "Health Check Path Id"
}

variable "certificate_arn" {}
