vpc_cidr = "172.16.0.0/16"
vpc_name = {
   "Name" = "tf-example"
}
cidr_block = "172.16.10.0/24"
subnet_name = {
  "Name" = "my_subnet"
}
sg_name = {
  "Name" = "allow_tls"
}
private_ips = ["172.16.10.100"]
nic_name = {
  "Name" = "my_nic"
}
instance_name = {
  "Name" = "PROD-SERVER"
}
instance_ami = "ami-005e54dee72cc1d00"
instance_type = "t2.micro"
