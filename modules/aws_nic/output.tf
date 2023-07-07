#In aws_nic for output.tf
output "nic_id"{
  value = aws_network_interface.foo.id
}
