
variable "igw_id" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "subnet_id" {
}

resource "aws_route_table" "terraform-route-table" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${var.igw_id}"
  }

  tags = {
    Name = "terraform-rt"
  }
}

resource "aws_route_table_association" "tf-rt-subnet-public" {
  subnet_id      = "${var.subnet_id[0]}"
  route_table_id = "${aws_route_table.terraform-route-table.id}"
}