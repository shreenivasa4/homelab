module "vpc" {
  source = "../../modules/vpc"

  project                   = var.project
  environment               = var.environment
  region                    = var.region
  vpc_cidr_block            = var.vpc_cidr_block
  instance_tenancy          = var.instance_tenancy
  enable_dns_hostnames      = var.enable_dns_hostnames
  enable_dns_support        = var.enable_dns_support
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
}