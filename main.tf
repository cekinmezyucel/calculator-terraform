provider "google" {
  credentials = file("service-account-3k3t.json")
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}

resource "google_project_service" "service" {
  for_each                   = toset(["compute.googleapis.com", "oslogin.googleapis.com", "serviceusage.googleapis.com", "cloudresourcemanager.googleapis.com"])
  service                    = each.key
  project                    = var.project_name
  disable_on_destroy         = false
  disable_dependent_services = false
}

module "network" {
  source = "../terraform-google-network-module"

  name                    = var.environment
  auto_create_subnetworks = true
  project_id              = var.project_id
  routing_mode            = "REGIONAL"
}

module "k8s" {
  source = "../terraform-google-k8s-module"

  project_id           = var.project_id
  network_self_link    = module.network.network_self_link
  subnetwork_self_link = module.network.network_self_link # Right now subnetwork name is the same as network name
  gitops_enabled       = false
}
