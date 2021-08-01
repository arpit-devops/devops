
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {

    default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
    default = "10.0.2.0/24"
}


provider "aws" {
    region = "us-east-1"
    secret_key = "sRaQTkRKI0GcxXPhuZR8yTdwsgre0npjW6SRVL5k"
    access_key = "AKIASP6EMJ4BSB556G5X"
  
}

module "vpc" {
  source         = "../modules/vpc"
  vpc_cidr       = "${var.vpc_cidr}"
}


module "subnet" {
    source       = "../modules/subnet"
    public_ip_on_launch = true
    vpc_id = "${module.vpc.vpc_id}"
    availability_zone = "us-east-1a"
    cidr_block = "${var.public_subnet_cidr}"
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









