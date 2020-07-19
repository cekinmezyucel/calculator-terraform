provider "google" {
  credentials = file("service-account.json")
  project     = "mms-cfo-playground2007-a-h0zz"
  region      = "europe-west4"
  zone        = "europe-west4-b"
}

module "instance" {
  source = "./modules/instance"

  name    = "terraform-instance"
  network = google_compute_network.vpc_network.self_link
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
