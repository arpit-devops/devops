variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}


variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of VPC"
  default     = "my-terraform-VPC"
}

resource "aws_vpc" "vpc01" {
  cidr_block           = "${var.vpc_cidr}"
  #enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}"
  }
}

output "vpc_id" {
  value = "${aws_vpc.vpc01.id}"
}