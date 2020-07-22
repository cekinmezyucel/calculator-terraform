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

variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "mms-cfo-playground2007-a-h0zz"
}