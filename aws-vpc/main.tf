module "vpc" {
  source                 = "app.terraform.io/ANET/vpc/aws"
  version                = "1.0.1"
  vpc_name               = "KentuckyMyco"
  cidr_block             = "10.0.0.0/16"
  instance_tenancy       = "default"
  enable_public_subnets  = true
  enable_private_subnets = false
  enable_dns_support     = true
  enable_dns_hostnames   = true
}

