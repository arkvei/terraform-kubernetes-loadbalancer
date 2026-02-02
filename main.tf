variable "region" {
  type        = string
  description = "Region for the resource."
}

variable "location" {
  type        = string
  description = "Location represents region/zone for the resource."
}

variable "network_name" {
  default = "tf-gke-k8s"
}

provider "google" {
  region = var.region
}

resource "google_compute_network" "default" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "default" {
  name                     = var.network_name
  ip_cidr_range            = "10.127.0.0/20"
  network                  = google_compute_network.default.self_link
  region                   = var.region
  private_ip_google_access = true
}

resource "google_container_cluster" "default" {
  name     = var.network_name
  location = var.location

  initial_node_count = 1

  network    = google_compute_network.default.name
  subnetwork = google_compute_subnetwork.default.name

  remove_default_node_pool = true

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  location   = var.location
  cluster    = google_container_cluster.default.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
