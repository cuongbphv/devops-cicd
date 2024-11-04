# Random DB Name suffix
resource "random_id" "db_name_suffix" {
  byte_length = 4
}

# Resource: Cloud SQL Database Instance
resource "google_sql_database_instance" "instance" {
  name = "${local.name}-postgresql-${random_id.db_name_suffix.hex}"
  project = var.gcp_project
  region = var.gcp_region1
  database_version = var.cloudsql_database_version
  deletion_protection = false
  root_password    = "YOURPASSWORD"
  
  settings {
    tier = "db-custom-1-3840"
    disk_size = 10
    disk_type = "PD_SSD"
    
    backup_configuration {
      enabled = true
      point_in_time_recovery_enabled  = true      
    }

    ip_configuration {
      authorized_networks {
        value = "0.0.0.0/0"
      }
    }
  }
}

# Resource: Cloud SQL Database User
resource "google_sql_database" "database" {
  name     = "pg-dev-example"
  instance = google_sql_database_instance.instance.name
}



