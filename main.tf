provider "google" {
  credentials = file("service-account-3k3t.json")
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}

module "instance" {
  source  = "./modules/google_compute_instance"
  name    = "terraform-instance"
  network = module.network.network_self_link
}

module "network" {
  source                  = "git@github.com:cekinmezyucel/terraform-google-network-module.git?ref=v0.1-alpha"
  name                    = "terraform-network"
  auto_create_subnetworks = true
  project_id              = var.project_id
  routing_mode            = "REGIONAL"
}

resource "google_project_service" "service" {
  for_each                   = toset(["compute.googleapis.com", "oslogin.googleapis.com", "serviceusage.googleapis.com", "cloudresourcemanager.googleapis.com"])
  service                    = each.key
  project                    = var.project_name
  disable_on_destroy         = false
  disable_dependent_services = false
}
