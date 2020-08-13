data "google_client_config" "default" {
}

data "google_container_cluster" "cluster" {
  name     = module.k8s.name
  location = var.zone
  project  = var.project_id
}

provider "kubernetes" {
  load_config_file       = false
  host                   = "https://${data.google_container_cluster.cluster.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(data.google_container_cluster.cluster.master_auth[0].cluster_ca_certificate)
}
