terraform {
  required_version = ">= 0.13.5"
  backend "gcs" {
    bucket = "mystok-gcp-prod-tfstate-bucket"
    credentials = "~/secret/71241c09ff42-mystok-gcp-terraform.json"
  }
}
