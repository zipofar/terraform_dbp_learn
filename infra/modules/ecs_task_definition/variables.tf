variable "network_mode" {
  description = "Network mode"
}

variable "requires_compatibilities" {
  description = "Requires Compatibilities"
}

variable "cpu" {
  description = "CPU"
}

variable "memory" {
  description = "Memory"
}

variable "execution_role_arn" {
  description = "Execution Role Arn"
}

variable "task_role_arn" {
  description = "Task Role Arn"
}

variable "environment" {
  description = "Environment"
}

variable "name" {
  description = "Name"
}

variable "container_definitions" {
  description = "Container Definitions"
  type = list
}
