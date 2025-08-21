resource "aws_instance" "server_tf" {
  ami           = var.ami_id
  instance_type = var.instance_type_value
  subnet_id = var.subnet_id
  #sg_id = var.sg_id
  tags = merge({
    Name = var.instance_name
  }, var.tags)
}