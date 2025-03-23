terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}
module "vpc" {
  source     = "./vpc"
  cidr_block = var.cidr_block
  tags       = var.vpc_tags

}
module "subnet" {
  source     = "./subnet"
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.subne_cidr_block
  tags       = var.subnet_tags
}
module "igw" {
  source = "./internet_gateway"
  vpc_id = module.vpc.vpc_id
  tags   = var.igw_tags
}
module "route_table" {
  source     = "./route_table"
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.route_cidr_block
  gateway_id = module.igw.igw_id
  subnet_id = module.subnet.subnet_id
  tags       = var.route_table_tags
}
module "security_group" {
  source              = "./security_group"
  security_group_tags = var.security_group_tags
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
  source          = "./ec2"
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = module.subnet.subnet_id
  security_groups = [module.security_group.security_group_id]
  tags            = var.ec2_tags
}