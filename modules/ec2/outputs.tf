output "ec2_ip" {
  value = aws_instance.ec2.public_ip
}

output "host_id" {
  value = aws_instance.ec2.host_id
}