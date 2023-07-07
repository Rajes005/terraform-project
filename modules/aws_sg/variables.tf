#In aws_sg for variable.tf
variable "vpc_id" {
  type = string
}
variable "sg_name"{
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
}
