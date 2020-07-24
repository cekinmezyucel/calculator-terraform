# Required Variables
variable "name" {
  description = "Google Cloud Platform Compute Instance Name"
  type        = string
}

variable "network" {
  description = "Google Cloud Platform Compute Instance Network"
  type        = string
}

# Optional Variables
variable "machine_type" {
  description = "Google Cloud Platform Compute Instance Machine Type"
  type        = string
  default     = "f1-micro"
}

variable "image" {
  description = "Google Cloud Platform Compute Instance Image"
  type        = string
  default     = "debian-cloud/debian-9"
}