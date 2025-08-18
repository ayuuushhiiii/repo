variable "region" {
  description = "region of the resource deployment"
  default = ""
  type = string
}
variable "subnet1_tf" {
  description = "range of subnet1"
  default = ""
  type = string
}
variable "subnet2_tf" {
  description = "range of subnet2"
  default = ""
  type = string
}
variable "vpc_id"{
  type= string
}
