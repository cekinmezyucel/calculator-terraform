# Required Variables
variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "project_id" {
  description = "Project Id"
  type        = string
}

variable "environment" {
  description = "Environment of the project [dev, test, prod]"
  type        = string
}

variable "region" {
  description = "Region if the Infrastructure"
  type        = string
}

variable "zone" {
  description = "Zone of the Infrastructure"
  type        = string
}

variable "node_pools" {
  description = "Node pools to create on k8s cluster"
  type = map(
    object({
      min_node_count    = number
      max_node_count    = number
      preemptible       = bool
      machine_type      = string
      image_type        = string
      labels            = map(string)
      tags              = set(string)
      auto_repair       = bool
      auto_upgrade      = bool
      max_pods_per_node = number
    })
  )
}