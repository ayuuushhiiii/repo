resource "aws_route_table" "this" {
  vpc_id = var.vpc_id
  route {
    cidr_block = var.cidr_block
      gateway_id = var.ig_id
  }
  tags = {
    Name = var.route_name
  }
}