provider "aws" {
  region = var.aws_region
}

module "vpc_creation" {
  source = "./VPC_module"
  vpc_block = var.range
  vpc_git = var.vpc_name
  region = var.aws_region
  
}
module "subnet1_creation" {
  source = "./SUBNET_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_1
  aws_region = var.aws_region
}
module "subnet2_creation" {
  source = "./SUBNET_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_2
  aws_region = var.aws_region
}
module "ec2_instance" {
    source = "./EC2_module"
   instance_type_value = var.instance_type
   ami_id = var.ami_id
   instance_name = var.instance_name
   subnet_id = module.subnet1_creation.subnet_id
}
module "ec2_sg" {
  source = "./SG_module"
  sg_name = var.sg_name
  vpc_id = module.vpc_creation.vpc_id
}


