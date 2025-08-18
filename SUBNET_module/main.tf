provider "aws" {
  region = var.region
}
# first subnet
resource "aws_subnet" "subnet1_tf" {
  vpc_id = aws_vpc.vpc_tf
  cidr_block = var.subnet1_tf
  tags = {
    Name= "subnet-1_git"
  }
}
# second subnet
resource "aws_subnet" "subnet1_tf" {
  vpc_id = aws_vpc.vpc_tf
  cidr_block = var.subnet2_tf
  tags = {
    Name= "subnet-2_git"
  }
}


