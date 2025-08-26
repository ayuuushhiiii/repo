variable "vpc_id" {
  description = "ID of VPC"
  default = ""
  type = string
}
variable "cidr_block" {
  description = "range of CIDR"
  default = ""
  type = string
}
# variable "ig_id" {
#   description = "ID of internet gateway"
#   default = ""
#   type = string
# }
# variable "route_name" {
#   description = "Name of route table"
#   default = ""
#   type = string
# }
variable "gateway_id" {
  description = "ID of gateway"
  default = ""
  type = string
}
variable "route_name" {
  description = "Name tag for the route table"
  type        = string
}
