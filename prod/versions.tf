terraform {
  required_version = ">= 0.13.5"
  backend "gcs" {
    bucket = "mystok-simple-tfstate-bucket"
    credentials = "~/secret/fd32c28b5ec5-mystok-simple-terraform.json"
  }
}
