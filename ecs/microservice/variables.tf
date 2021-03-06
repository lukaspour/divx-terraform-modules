# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "prefix" {
  description = "A prefix used for naming resources."
}

variable "vpc_id" {
  description = "The ID of the VPC that this container will run in, needed for the Target Group"
}

variable "cluster_id" {
  description = "ID of an ECS cluster which the service will be deployed to."
}

variable "cluster_role_id" {
  description = "The ID of EC2 Instance profile IAM Role for cluster instances "
}

variable "listener_rule" {
  description = "Listener rule block containing the listener arn, type and values."
  type        = "map"
}

variable "target" {
  description = "A target block containing the protocol and port exposed on the container."
  type        = "map"
}

variable "health" {
  description = "A health block containing health check settings for the target group. Overrides the defaults."
  type        = "map"
}

variable "task_container_count" {
  description = "Number of containers to run for the task."
  default     = "2"
}

variable "task_definition_image" {
  description = "Image for the task definition (repo:tag or repo@digest)."
}

variable "task_definition_cpu" {
  description = "Optional: The ID of Cluster IAM Role "
  default     = "256"
}

variable "task_definition_ram" {
  description = "Optional: The ID of Cluster IAM Role "
  default     = "512"
}

variable "task_definition_command" {
  description = "Optional: List of command arguments that are passed when invoking the command."
  default     = []
}

variable "task_definition_environment" {
  description = "Optional: Map of key = value pairs for the environment."
  default     = {}
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = "map"
  default     = {}
}
