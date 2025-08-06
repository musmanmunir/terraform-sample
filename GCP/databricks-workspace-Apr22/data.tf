data "google_compute_network" "network" {
  name    = var.network_name
  project = var.google_project
}

data "google_compute_subnetwork" "subnet" {
  name    = var.subnet_name
  region  = var.google_region
  project = var.google_project
}

data "google_compute_router" "router" {
  name    = var.router_name
  region  = var.google_region
  project = var.google_project
  network = data.google_compute_network.network.self_link
}
