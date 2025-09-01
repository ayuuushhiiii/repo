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
  subnet_name = var.subnet1_git
}
module "subnet2_creation" {
  source = "./SUBNET_module"
  vpc_id = module.vpc_creation.vpc_id
  cidr_block = var.cidr_block_2
  aws_region = var.aws_region
  subnet_name = var.subnet2_git
}
module "ec2_sg" {
  source = "./SG_module"
  sg_name = var.sg_name
  vpc_id = module.vpc_creation.vpc_id
}
module "ec2_instance" {
    source = "./EC2_module"
   instance_type_value = var.instance_type
   ami_id = var.ami_id
   instance_name = var.instance_name
   subnet_id = module.subnet1_creation.subnet_id
   sg_id = module.ec2_sg.sg_id
}
module "ig_creation" {
  source = "./IG_module"
  vpc_id = module.vpc_creation.vpc_id
  ig_name =  var.ig_name
}
module "route_table_creation" {
  source = "./ROUTETABLE_module"
  cidr_block = "0.0.0.0/0"
  gateway_id = module.ig_creation.ig_id
  route_name = var.route_name
  vpc_id = module.vpc_creation.vpc_id
}
resource "aws_route_table_association" "route_tf" {
  route_table_id = module.route_table_creation.route_table_id
  subnet_id = module.subnet1_creation.subnet_id
}
module "gateway_creation" {
  source = "./LB_module"
  subnet_ids = [
  module.subnet1_creation.subnet_id,
  module.subnet2_creation.subnet_id
  ]
  name_lb = var.name_lb
  sg_id = var.sg_id
}
