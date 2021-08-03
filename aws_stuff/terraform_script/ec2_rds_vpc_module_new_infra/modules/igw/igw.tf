
variable "vpc_id" {
  default = ""
}


resource "aws_internet_gateway" "terraform_default_gateway" {
  vpc_id = "${var.vpc_id}"
  
}

output "igw_id" { value = "${aws_internet_gateway.terraform_default_gateway.id}" }
