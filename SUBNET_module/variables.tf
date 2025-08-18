variable "vpc_id" {
  description = "id of VPC"
  default = ""
  type = string
}
variable "cidr_block" {
  description = "range of CIDR"
  default = ""
  type = string
}
variable "aws_region" {
  description = "region of VPC"
  default = ""
  type = string
}