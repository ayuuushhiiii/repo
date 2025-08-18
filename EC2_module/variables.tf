variable "region" {
  description = "instance will be deployed in which region"
  default = ""
  type = string
}
variable "ami_id" {
  description = "instance image"
  default = ""
  type = string
}
variable "Name" {
  description = "name of instance"
  default = ""
  type = string
}
variable "instance_type" {
  description = "size of instance"
  default = ""
  type = string
}
variable "subnet1_tf" {
  type = string
}