module "vpc" {

  source = "terraform-aws-modules/vpc/aws"
  name   = var.vpc-name
  cidr   = var.cidr-vpc

  azs             = [local.az-a, local.az-b]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets


  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    terraform   = "true"
    Environment = "Dev"

  }

}