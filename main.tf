provider "google" {
  credentials = file("service-account-vxer.json")
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}

resource "google_project_service" "service" {
  for_each                   = toset(local.project_services)
  service                    = each.key
  project                    = var.project_name
  disable_on_destroy         = false
  disable_dependent_services = false
}

module "network" {
  source = "../terraform-google-network-module"

  name            = var.environment
  project_id      = var.project_id
  routing_mode    = "REGIONAL"
  cidr            = "10.0.0.0/22"
  subnetwork_name = var.environment
  region          = var.region
  depends_on      = [google_project_service.service]
}

module "k8s" {
  source = "../terraform-google-k8s-module"

  project_id           = var.project_id
  network_self_link    = module.network.network_self_link
  subnetwork_self_link = module.network.subnetwork_self_link
  gitops_enabled       = false
}
