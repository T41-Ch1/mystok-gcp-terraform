#VPC
resource "google_compute_network" "vpc" {
  name = "${var.prefix}-vpc"
  auto_create_subnetworks = "false"
}

#Subnet
resource "google_compute_subnetwork" "subnet" {
  name = "${var.prefix}-subnet"
  region = var.region
  network = google_compute_network.vpc.name
  ip_cidr_range = "10.20.0.0/24"
}

output "region" {
  value = var.region
  description = "region"
}

