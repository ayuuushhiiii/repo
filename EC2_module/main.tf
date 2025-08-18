provider "aws" {
  region = var.region
}
resource "aws_instance" "instance_tf" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet1_tf.id
  tags = merge({
    Name = var.instance_name
  }, var.tags)
  
}