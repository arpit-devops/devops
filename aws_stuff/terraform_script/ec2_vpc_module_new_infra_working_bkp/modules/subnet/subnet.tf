variable "region" {
  description = "AWS Region"
  default     = ""
}

variable "public_ip_on_launch" {
  default = "false"
}

variable "cidr_block" {
    type = string
}

variable "availability_zone" {
    type = string
  
}

variable "tags_name" {
    default = "terraform-subnet"
  
}
variable "vpc_id" {
  default = ""
}


resource "aws_subnet" "tf-subnet" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.cidr_block}"
  availability_zone       = "${var.availability_zone}"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "${var.tags_name}"
  }
}



#output "new_subnet_id" {value = "aws_subnet.${var.subnet_name}.public_ip"}
output "public_subnet" {value = "${aws_subnet.tf-subnet.*.id}"}
