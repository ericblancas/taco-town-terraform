module "master_instance" {
  source        = "../../../../modules/common/database"
  instance_name = "ericstestdb123"
  db_username   = "postgres"
  db_name       = "main"
  password      = var.password
}


