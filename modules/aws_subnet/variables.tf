#In aws_subnet for variable.tf
variable "vpc_id" {
  type = string
}
variable "cidr_block" {
  type = string
  default = "172.16.10.0/24"
}
variable "subnet_name" {
  type = map(any)
  default = {
    "Name" = "my_subnet"
  }
}
