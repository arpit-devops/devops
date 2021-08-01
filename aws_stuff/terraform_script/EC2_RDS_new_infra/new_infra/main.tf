
variable "access_key" { 
}

variable "secret_key" {
}


provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
  alias  = "akshay_aws_provider"
}


module "vpc" {
  source = "../modules/vpc"
  providers = {
    name = aws.akshay_aws_provider
   }

  resource_tag_name = var.resource_tag_name
  namespace         = var.namespace
  region            = var.region

  vpc_cidr = "10.0.0.0/16"

  route = [
    {
      cidr_block     = "0.0.0.0/0"
      gateway_id     = module.vpc.gateway_id
      #instance_id    = null
      #nat_gateway_id = null
    }
  ]

  subnet_ids = module.subnet_ec2.ids
}


module "ec2" {
  source = "../modules/ec2"

  # resource_tag_name = var.resource_tag_name
  region            = var.region

  ami           =  "ami-09e67e426f25ce0d7"                   # Ubuntu Server 20.04 LTS
  key_name      = "Akshay-key"
  instance_type = var.instance_type
  subnet_id     = module.subnet_ec2.ids[0]

  vpc_security_group_ids = [aws_security_group.ec2.id]

  vpc_id = module.vpc.id
}

module "rds" {
    source = "../modules/rds"




  
}


