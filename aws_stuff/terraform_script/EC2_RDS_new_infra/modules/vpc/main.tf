
variable "vpc_cidr" {
    default = "10.0.0.0/16"  
}


resource "aws_vpc" "Akshay_VPC" {
  cidr_block = var.vpc_cidr

  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = {
    "Name" = "AkshayVPC"
  }
}

resource "aws_internet_gateway" "Akshay_igw" {
  vpc_id = aws_vpc.Akshay_VPC.id
  tags = {
    "Name" = "AkshayIGW"
  }
}

resource "aws_route_table" "Akshay_rt" {
  vpc_id = aws_vpc.Akshay_VPC.id

  dynamic "route" {
    for_each = var.route

    content {
      cidr_block     = route.value.cidr_block
      gateway_id     = route.value.gateway_id
      #instance_id    = route.value.instance_id
      #nat_gateway_id = route.value.nat_gateway_id
    }
  }

  tags = {
    "Name" = "AkshayRT"
  }
}

resource "aws_route_table_association" "Akshay_rta" {
  count          = length(var.subnet_ids)

  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = aws_route_table.Akshay_rt.id
  tags = {
    "Name" = "AkshayRTA"
  }
}