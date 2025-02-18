terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "6.17.0"
    }
  }
}

provider "google" {
    project = var.project_id
    region = var.region
    zone = var.zone
    credentials = "${file("credentials.json")}"
}

resource "google_compute_network" "vpc_network" {
  name = "lab-vpc-network"
  auto_create_subnetworks = false
  mtu = 1460
}