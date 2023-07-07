#In aws_instance for variable.tf
variable "instance_name"{
  type = map(any)
  default = {
    "Name" = "PROD-SERVER"
  }
}
variable "instance_ami" {
  type = string
  default = "ami-005e54dee72cc1d00"
}
variable "instance_type"{
  type = string
  default = "t2.micro"
}
variable "nic_id"{
  type = string
}
