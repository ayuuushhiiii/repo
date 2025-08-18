provider "aws" {
  region = var.region
}
resource "aws_instance" "instance_tf" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet1_tf.id
    tags = {
        Name = var.Name
    }
  
}