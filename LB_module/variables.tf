variable "sg_id" {
  description = "id of security group"
  type = string
  default = ""
}
variable "subnet_id" {
  description = "id of subnet"
  default = ""
  type = string
}
variable "name_lb" {
  description = "name of load balancer"
  default = ""
  type = string
}
