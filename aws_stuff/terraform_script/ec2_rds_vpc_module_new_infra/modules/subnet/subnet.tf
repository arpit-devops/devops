variable "region" {
  description = "AWS Region"
  default     = ""
}

variable "public_ip_on_launch" {
  default = false
}

variable "cidr_block" {
    type = list
}

variable "availability_zone" {
  
}

variable "tags_name" {
    default = "terraform-subnet"
  
}
variable "vpc_id" {
  default = ""
}


resource "aws_subnet" "tf-subnet" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.cidr_block[0]}"
  availability_zone       = "${var.availability_zone[0]}"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.tags_name}"
  }
}

resource "aws_subnet" "tf-private-subnet1" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.cidr_block[1]}"
  availability_zone       = "${var.availability_zone[1]}"
  map_public_ip_on_launch = false
  tags = {
    Name = "tf-private-subnet1"
  }
}

resource "aws_subnet" "tf-private-subnet2" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.cidr_block[2]}"
  availability_zone       = "${var.availability_zone[0]}"
  map_public_ip_on_launch = false
  tags = {
    Name = "tf-private-subnet2"
  }

}


#output "new_subnet_id" {value = "aws_subnet.${var.subnet_name}.public_ip"}
output "public_subnet" {value = "${aws_subnet.tf-subnet.*.id}"}
output "private_subnet1" {value = "${aws_subnet.tf-private-subnet1.*.id}"}
output "private_subnet2" {value = "${aws_subnet.tf-private-subnet2.*.id}"}