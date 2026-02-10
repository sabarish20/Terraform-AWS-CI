variable "vpc_name" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

variable "availability_zone" {
  type = list(string)
}

variable "cidr_block" {
  type = string
}

variable "map_public_ip_on_launch" {
  type = bool
}

variable "instance_type" {
  type = string
}
