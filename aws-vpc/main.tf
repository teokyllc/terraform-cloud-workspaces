module "vpc" {
  source                 = "app.terraform.io/ANET/vpc/aws"
  version                = "1.0.9"
  vpc_name               = "KentuckyMyco"
  cidr_block             = "10.0.0.0/16"
  instance_tenancy       = "default"
  enable_public_subnets  = true
  enable_private_subnets = false
  enable_dns_support     = true
  enable_dns_hostnames   = true
  public_subnets         = [
      {
          name = "Public-A",
          cidr = "10.0.0.0/24"
          az   = "a"
      },
      {
          name = "Public-B",
          cidr = "10.0.1.0/24"
          az   = "b"
      },
      {
          name = "Public-C",
          cidr = "10.0.2.0/24"
          az   = "c"
      }
  ]
  private_subnets         = []
}

