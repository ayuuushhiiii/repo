provider "aws" {
  region = var.aws_region
}
resource "aws_subnet" "this" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block

}