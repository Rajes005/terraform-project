#In aws_subnet for main.tf
resource "aws_subnet" "my_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  #availability_zone = "us-west-2a"

  tags = var.subnet_name
}
