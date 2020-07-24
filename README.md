#Calculator Terraform
This project trying to create an GitOps environment for Calculator Microservice Services. Still under construction.

##Creating a Service Account for Terraform
GCP -> IAM -> Service Account -> Create Service Account -> "terraform-sa" -> Role -> Project Editor|Compute Admin|Compute Network Admin -> Done -> Menu -> Create Key -> JSON

##How to run terraform with tfvars file
`terraform plan -var-file="./config/dev.tfvars"`