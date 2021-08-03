
variable "ami" {
}

variable "vpc_id" {

}

variable "subnet_id" {
	
}

resource "aws_key_pair" "deployer" {
  key_name   = "mykey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvi6ci+NZytvx2GZvrp7dMhZeyDEdCexAcEz81NaFUMiL5OvJ4LyhRbvPSRasKjN0O+QWIu9XkmaDtoHLrErXshLp/9bWxe0jcYY1kMapQNmgzqaH5bAna+BBgFU8m8UPOsYM+DBNyaOm7SL/P+QTuogMRfylVDAneohLEQiec2qXLKAO20EtbDTWOpNxU4xvoFMUV6hCI/u9F21u4bQi78Eid3p17ZStjwZ5him73kz3VQ7psKgSalJF5cQ0eRbWSRHl2kvcSta2W+ivwrvXtgLICZB9KRCkyCKeb15cq/MvtfBBeWUEClrjq9PD1PaarbX5DyWJRXEegsPUj6IJT4K4K0aSyNXRWwfVR3sV7YDsOCZ4ewcliEiotZHG9bzmMQUYU04WAC2HCFxRQ5KdthSk9a0PGY2imUnsL0SANYkAcVNDk7KebEaPj9hcfk6NiDKFmVSYEFbcUr2tJGSkr0d3N2NIl/KEosAGZf5HhrGm+rVo15OqevPnNqyUya/8= arpit@arpit-Aspire-A715-42G"
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

 