provider "aws" {
  region = var.region
}
resource "aws_vpc" "vpc_tf" {
  cidr_block       = var.vpc_block
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_git
  }
}
