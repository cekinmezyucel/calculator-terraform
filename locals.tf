locals {

  project_admins = [
    "user:cekinmez@mediamarktsaturn.com"
  ]

  project_services = [
    "serviceusage.googleapis.com", // Some projects are came disabled by default. Need to enable this api manually.
    "cloudbilling.googleapis.com",
    "cloudapis.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "container.googleapis.com",
    "containerregistry.googleapis.com",
    "iam.googleapis.com",
    "servicecontrol.googleapis.com",
    "servicemanagement.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "oslogin.googleapis.com"
  ]

}