output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "pubSub" {  
  value = [for pubSub in aws_subnet.pubSub : pubSub.id]
}