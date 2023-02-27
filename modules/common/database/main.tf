resource "google_sql_database_instance" "postgresql" {
  name             = var.instance_name
  project          = var.gcp_project
  region           = var.gcp_region
  database_version = "POSTGRES_14"

  settings {
    tier              = "db-f1-micro"
    availability_type = "REGIONAL"
    ip_configuration {
      ipv4_enabled = "true"
    }
    location_preference {
      zone = var.zone
    }
  }
}

resource "google_sql_user" "main" {
  depends_on = [
    google_sql_database.main
  ]
  name     = var.db_username
  instance = google_sql_database_instance.postgresql.name
  password = var.password
}

resource "google_sql_database" "main" {
  depends_on = [
    google_sql_database_instance.postgresql
  ]
  name     = var.db_name
  instance = google_sql_database_instance.postgresql.name
}
