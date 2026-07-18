variable "vpc_id" {

  description = "VPC ID"

  type = string

}


variable "subnet_id" {

  description = "Subnet ID for EC2 instance"

  type = string

}


variable "environment" {

  description = "Environment name"

  type = string

}


variable "key_name" {

  description = "EC2 key pair name"

  type = string

}


variable "instance_type" {

  description = "EC2 instance type"

  type = string

  default = "t3.micro"

}
