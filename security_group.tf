resource "aws_security_group" "mysql" {
  description = "this is a security group for the ntier network"
  name        = "mysql_sg"
  vpc_id      = module.vpc.vpc_id
  ingress {
    cidr_blocks = [local.anywhere]
    description = "this will open the mysql port for the database "
    from_port   = local.mysql_port
    protocol    = local.tcp
    to_port     = local.mysql_port
  }
  depends_on = [
    module.vpc
  ]


}
resource "aws_security_group" "websg" {
  description = "this will allow the vm to login "
  name        = "websg"
  vpc_id      = module.vpc.vpc_id
  ingress {
    cidr_blocks = [local.anywhere]
    description = "httpd"
    from_port   = local.http
    protocol    = local.tcp
    to_port     = local.http
  }
  ingress {
    cidr_blocks = [local.anywhere]
    description = "ssh"
    from_port   = local.ssh
    protocol    = local.tcp
    to_port     = local.ssh
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }
  depends_on = [
    module.vpc
  ]



}
