# Terraform Settings Block
terraform {
  required_version = ">= 1.9"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.35.0"
    }
  }
  # backend "gcs" {
  #   bucket = "gcplearn9-tfstate"
  #   prefix = "cloudsql/publicdb"
  # }
}

# Terraform Provider Block
provider "google" {
  project = var.gcp_project
  region = var.gcp_region1
  # zone = var.gcp_zone
  credentials = file("key.json")
}