#In main.tf
module "vpc" {
  source = "./modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}
module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = module.vpc.vpc_id
  cidr_block = var.cidr_block
  subnet_name = var.subnet_name
}
module "sg" {
  source = "./modules/aws_sg"
  vpc_id = module.vpc.vpc_id
  sg_name = var.sg_name
}
module "nic" {
  source = "./modules/aws_nic"
  subnet_id = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_name = var.nic_name
}
#module "instance" {
#  source = "./modules/aws_instance"
#  instance_name = var.instance_name
#  instance_type = var.instance_type
#  instance_ami = var.instance_ami
#  nic_id = module.nic.nic_id
#}
#module "instance_east_1" {
#  source = "./modules/aws_instance"
#  providers = {
#    aws = aws.east-1
#  }
#  instance_name = var.instance_name
#  instance_type = var.instance_type
#  instance_ami = var.instance_ami
#  nic_id = module.nic.nic_id
#}
module "nic" {
  source   = "./modules/aws_nic"
  for_each = var.instance_config

  subnet_id   = module.subnet.subnet_id
  private_ips = each.value.private_ips
  nic_name    = each.value.nic_name
}
module "instance" {
  source        = "./modules/aws_instance"
  for_each      = var.instance_config
  instance_name = each.value.instance_name
  instance_type = each.value.instance_type
  instance_ami  = each.value.instance_ami
  nic_id        = module.nic[each.key].nic_id
}
