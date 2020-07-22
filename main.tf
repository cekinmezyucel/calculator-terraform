provider "google" {
  credentials = file("service-account.json")
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}

module "instance" {
  source  = "./modules/instance"
  name    = "terraform-instance"
  network = google_compute_network.vpc_network.self_link
}

resource "google_project_service" "service" {
  service = "compute.googleapis.com"
  project = var.project_name
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
  depends_on              = [google_project_service.service]
}
