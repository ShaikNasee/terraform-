locals {
  az-a         = format("%sa", var.region)
  az-b         = format("%sb", var.region)
  anywhere     = "0.0.0.0/0"
  tcp          = "tcp"
  http         = 80
  ssh          = 22
  mysql_port   = 3306
  db_subnet_1  = 0
  db_subnet_2  = 1
  app_subnet_1 = 2
  app_subnet_2 = 3





}