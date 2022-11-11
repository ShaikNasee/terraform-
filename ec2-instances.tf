resource "aws_instance" "web-instance" {
  ami                         = "ami-017fecd1353bcc96e"
  instance_type               = "t2.micro"
  key_name                    = "learning"
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.websg.id]
  tags = {
    "Name" = "web-ec2"

  }
  depends_on = [
    module.vpc,
    aws_security_group.websg



  ]


}