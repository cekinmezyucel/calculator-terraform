# Project
project_name = "mms-cfo-playground2008-a-vxer"
project_id   = "mms-cfo-playground2008-a-vxer"
environment  = "dev"
region       = "europe-west4"
zone         = "europe-west4-b"

# K8s
node_pools = {
  "default-pool" = {
    min_node_count    = 1
    max_node_count    = 2
    machine_type      = "n1-standard-4"
    image_type        = "COS"
    labels            = {}
    tags              = []
    auto_repair       = true
    auto_upgrade      = true
    preemptible       = true
    max_pods_per_node = 110
  }
}