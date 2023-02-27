variable "gcp_project" {
  description = "Id of gcp project"
  type        = string
  default     = "sandbox-377719"
}

variable "gcp_region" {
  description = "Region of resources being deployed to"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "gcp zone"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "name for master instance of databases"
  type        = string
}

variable "db_username" {
  description = "name of username for db"
  type        = string
}

variable "db_name" {
  description = "name of database"
  type        = string
}

variable "password" {
  description = "password for db"
}
