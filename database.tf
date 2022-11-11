# resource "aws_db_subnet_group" "mysql" {
#   name       = "mysql"
#   subnet_ids = [module.vpc.private_subnets[local.db_subnet_1], module.vpc.private_subnets[local.db_subnet_2]]

#   tags = {
#     Name = "My DB subnet group"
#   }
# }
# resource "aws_db_instance" "database" {
#   allocated_storage   = 20
#   db_name             = "mydatabase"
#   engine              = "mysql"
#   engine_version      = "5.7"
#   instance_class      = "db.t2.micro"
#   username            = "root"
#   password            = "rootroot"
#   skip_final_snapshot = true
#   tags = {
#     "Name" = "databse "
#   }

#   depends_on = [
#     module.vpc,
#     aws_db_subnet_group.mysql
#   ]
#   vpc_security_group_ids = [aws_security_group.mysql.id]
#   db_subnet_group_name   = aws_db_subnet_group.mysql.name

# }

