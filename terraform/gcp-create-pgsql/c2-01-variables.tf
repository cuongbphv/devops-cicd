# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP Resources to be created"
  type = string
  default = "your-gcp-example-prj"
}

# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type = string
  default = "asia-southeast1"
}

# GCP Zone
# variable "gcp_zone" {
#   description = "Zone in which GCP Resources to be created"
#   type = string
#   default = "asia-southeast1-b"
# }

# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

# Business Division
variable "business_division" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "it"
}

# Cloud SQL Database version
variable "cloudsql_database_version" {
  description = "Cloud SQL MySQL DB Database version"
  type = string
  default = "POSTGRES_15"
}

