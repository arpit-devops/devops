
variable "ami" {
}

variable "vpc_id" {

}

variable "subnet_id" {
	
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDwQMxfUKpODOZaNFMT4/MmY44iYB2a3h7alfVHfj+OdD3lGoXHQmIWVC6tTof+wpBX0TedPOz8+3vKkj2M14HZIyxyXX4CuWiXPSCT/CQXAj1RErvwnxfys/Fukwvp7nMqziNOSQF1I7PX8lWNDp/qDFHOENOMSyHztzW7IOKB4uL+8wPtE+tDQwQJfAUFWfhUjPECC7I1omeG/DiKP7YNc/vGHxz91Q4fqkvCedf+yB9bWGWyL1vhYahRJpk64y1iueqf9avT7UoK80DDVLkQURN2ByLm+WixSt1ursdF6inPIFOvlROeRLhutKZd9Fz6wpC6T/MfxwVOddrTIsn5Em1j8x5kUy+UEWGxCdPwFz7uiwF4xcThMkXIa5laD1LUBw1AobPdvdVDK4H0CVvLZRLSEei2rBuzOHPk0Dw0of6BBb3gWJCfKuD13/mrTTYqP3Y2ALnLq6MyFQDSCpifkNOnvaKtipAEAQCHYyw/qn2thau70WPTVgqOzKJZFl8= arpit@arpit-Aspire-A715-42G"
}


resource "aws_instance" "terraform-ec2" {
	ami           = "${var.ami}"
	instance_type = "t2.micro"
	#vpc_id = "${var.vpc_id}"
	subnet_id = "${var.subnet_id}"
	associate_public_ip_address = true
	key_name = aws_key_pair.deployer.key_name
  
	tags = {
	  Name = "terraform-ec2"
	}
  }
  

output "instance_public_ip" { value = "${aws_instance.terraform-ec2.*.public_ip}" }
output "instance_id" { value = "${aws_instance.terraform-ec2.*.id}" }

 