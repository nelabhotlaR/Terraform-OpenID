# Terraform Output Values
output "instance_publicip" {
  description = "openID-EC2 Instance Public IP"
  value = aws_instance.openID_instance.public_ip
}

output "instance_publicdns" {
  description = "openID-EC2 Instance Public DNS"
  value = aws_instance.openID_instance.public_dns
}

output "instance_id" {
    description = "The Instance ID of the openID-EC2 instance"
    value = aws_instance.openID_instance.id
}