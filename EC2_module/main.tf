resource "aws_instance" "server_tf" {
  ami           = var.ami_id
  instance_type = var.instance_type_value
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  tags = merge({
    Name = var.instance_name
  }, var.tags)
  lifecycle {
    create_before_destroy = true
  }
}