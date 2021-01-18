variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "prefix" {}

provider "google" {
  project = var.project_id
  region = var.region
  credentials = file("~/secret/fd32c28b5ec5-mystok-simple-terraform.json")
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "min_node_count" {
  default = 1
  description = "Minimum number of nodes in the NodePool"
}

variable "max_node_count" {
  default = 2
  description = "Maximum number of nodes in the NodePool"
}

variable "preemptible" {}

variable "machine_type" {}
