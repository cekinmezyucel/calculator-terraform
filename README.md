# Calculator Terraform
This project trying to create an GitOps environment for Calculator Microservice Services. Still under construction.

## Creating a Service Account for Terraform
GCP -> IAM -> Service Account -> Create Service Account -> "terraform-sa" -> Role -> Project Editor|Compute Admin|Compute Network Admin -> Done -> Menu -> Create Key -> JSON

## How to run terraform with tfvars file
`terraform plan -var-file="./config/dev.tfvars"`

## Settings
### .hooks
To set hooks run the command below.

`git config core.hooksPath .hooks/`

If there hooks do not work(linux/mac) please make them executable, there is an example below for pre-commit file. Be sure all .hooks files are executable.

`chmod +x pre-commit`