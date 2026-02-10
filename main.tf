module "vpc" {
  source                  = "./modules/vpc"
  vpc_name                = var.vpc_name
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch
  enable_dns_hostnames    = var.enable_dns_hostnames
  enable_dns_support      = var.enable_dns_support
  cidr_block              = var.cidr_block
}

module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id     = module.vpc.pubSub
}