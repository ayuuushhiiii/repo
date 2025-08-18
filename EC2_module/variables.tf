 variable "ami_id"{
   description = "this is ami id"
 }
 variable "instance_type_value" {
    description = "size of instance"
 }
 variable "subnet_id" {
  description = "value of subnet id"
  default = ""
  type = string
 }
 variable "instance_name"{
  description = "name of server"
  default = null
  type = string
 }
 variable "tags" {
   description = "add key value pairs to identify the resources"
   type = map(string)
   default = {}
 }