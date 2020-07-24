# Required Variables
variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "project_id" {
  description = "Project Id"
  type        = string
}

# Constant Variables
variable "zone" {
  description = "Zone of the Infrastructure"
  type        = string
  default     = "europe-west4-b"
}

variable "region" {
  description = "Region if the Infrastructure"
  type        = string
  default     = "europe-west4"
}