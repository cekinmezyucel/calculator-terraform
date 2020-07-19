# Required Variables
variable "name" {
  description = "Google Cloud Platform VM Instance Name"
  type        = string
}

variable "network" {
  description = "Google Cloud Platform VM Instance Network"
  type        = string
}

# Optional Variables
variable "machine_type" {
  description = "Google Cloud Platform VM Instance Machine Type"
  type        = string
  default     = "f1-micro"
}

variable "image" {
  description = "Google Cloud Platform VM Instance Image"
  type        = string
  default     = "debian-cloud/debian-9"
}