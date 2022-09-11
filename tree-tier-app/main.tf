# configure aws provider
provider "aws" {
  region           = var.region
}

# create vpc
module "vpc" {
  source                            = "../modules/vpc"
  region                            = var.region
  project_name                      = var.project_name
  vpc_cidr                          = var.vpc_cidr
  public_subnet_1_az1_cidr          = var.public_subnet_1_az1_cidr
  public_subnet_2_az2_cidr          = var.public_subnet_2_az2_cidr
  public_subnet_3_az2_cidr          = var.public_subnet_3_az2_cidr
  private_subnet_1_az1_cidr         = var.private_subnet_1_az1_cidr
  private_subnet_2_az2_cidr         = var.private_subnet_2_az2_cidr
  private_subnet_3_az2_cidr         = var.private_subnet_3_az2_cidr
}

