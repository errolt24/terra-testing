provider "google" {
project = "terraform-testing-361814"
region = "us-central1"
zone = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
name = "terraform-network-junior"
}

resource "google_compute_subnetwork" "public-subnetwork" {
name = "terraform-subnetwork-junior"
ip_cidr_range = "10.2.0.0/16"
region = "us-central1"
network = google_compute_network.vpc_network.name
}