module "IPAM" {
  source           = "app.terraform.io/ANET/ipam/aws"
  version          = "1.0.0"
  ipam_regions     = var.ipam_regions
  ipam_description = var.ipam_description
  us_east_1_cidrs  = var.us_east_1_cidrs
  us_east_2_cidrs  = var.us_east_2_cidrs
  tags             = var.tags
}