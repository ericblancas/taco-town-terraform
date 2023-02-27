module "master_instance" {
  source        = "../../../../modules/common/database"
  instance_name = "tacotownreplica"
  db_username   = "postgres"
  db_name       = "main"
  password      = var.password
}


