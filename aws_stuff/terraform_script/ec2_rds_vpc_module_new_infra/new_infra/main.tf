
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "cidr_block" {
    default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}


provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/arpit/.aws/credentials"
    profile                 = "default"
}

module "vpc" {
  source         = "../modules/vpc"
  vpc_cidr       = "${var.vpc_cidr}"
}

variable "availability_zone" {
    default = ["us-east-1a","us-east-1b"]
}

module "subnet" {
    source       = "../modules/subnet"
    public_ip_on_launch = true
    vpc_id = "${module.vpc.vpc_id}"
    availability_zone = "${var.availability_zone}"
    cidr_block = "${var.cidr_block}"
    tags_name = "terrafrom-public-subnet"
}

# module "subnet" {
#     source       = "../modules/subnet"
#     public_ip_on_launch = false
#     vpc_id = "${module.vpc.vpc_id}"
#     availability_zone = "us-east-1b"
#     cidr_block = "${var.private_subnet_cidr}"
#     tags_name = "terrafrom-private-subnet"
# }

module "igw" {
    source = "../modules/igw"
    vpc_id = "${module.vpc.vpc_id}"
}

module "route-table" {
    source = "../modules/routing"
    vpc_id = "${module.vpc.vpc_id}"
    igw_id = "${module.igw.igw_id}"
    subnet_id = "${module.subnet.public_subnet}"
}

module "ec2" {
  source = "../modules/ec2"
  #key_name="tf-ec2-key"
  #file_path="/home/arpit/.ssh/id_rsa.pub"
  #private_file_path="/home/arpit/.ssh/id_rsa"
  subnet_id="${module.subnet.public_subnet[0]}"
  ami           =  "ami-09e67e426f25ce0d7"
  vpc_id = "${module.vpc.vpc_id}"
  #security_group = "${module.security_group.security_grp}"

}


module "security_group" {
  source         = "../modules/security_group"
  vpc_id         = "${module.vpc.vpc_id}"
}

module "rds" {
    source      = "../modules/rds"    
    subnet_id1  = "${module.subnet.private_subnet1}"
    subnet_id2  = "${module.subnet.private_subnet2}"
    rds_security_grp_id = "${module.security_group.rds_security_grp_id}"
}







