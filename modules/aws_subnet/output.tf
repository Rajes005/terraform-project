#In aws_subnet for output.tf
output "subnet_id"{
  value = aws_subnet.my_subnet.id
}
