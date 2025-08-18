provider "aws" {
  region = var.region
}
# first subnet
resource "aws_subnet" "subnet1_tf" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet1_tf
  tags = {
    Name = "subnet-1_git"
  }
}

resource "aws_subnet" "subnet2_tf" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet2_tf
  tags = {
    Name = "subnet-2_git"
  }
}