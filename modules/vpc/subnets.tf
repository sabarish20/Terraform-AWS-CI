locals {
  az_map = {
        for idx, az in var.availability_zone : az => idx 
    }
}

resource "aws_subnet" "pubSub" {
    vpc_id = aws_vpc.vpc.id
    for_each = local.az_map
    availability_zone = each.key
    cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, each.value + 1)
    map_public_ip_on_launch = var.map_public_ip_on_launch
    tags = {
      Name = "PubSub-${each.key}"
    }
}