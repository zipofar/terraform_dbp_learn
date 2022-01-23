variable "name" {
  description = "App Name"
}

variable "environment" {
  description = "Environment"
}

variable "cluster_id" {
  description = "Cluster ID"
}

variable "task_definition_arn" {
  description = "Task Definition Arn"
}

variable "desired_count" {
  description = "Desired Count"
}

variable "min_percent" {
  description = "Min Percent"
}

variable "max_percent" {
  description = "Max Percent"
}

variable "launch_type" {
  description = "Launch Type"
}

variable "scheduling_strategy" {
  description = "Scheduling Strategy"
}

variable "security_groups" {
  description = "Security Groups"
}

variable "subnets" {
  description = "Subnets"
}

variable "aws_alb_target_group_arn" {
  description = "Aws Alb Target Group Arn"
}

variable "container_port" {
  description = "Container Port"
}

variable "container_name" {
  description = "Container Name"
}

variable "enable_execute_command" {
  description = "Enable Execute Command"
}
