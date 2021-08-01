
resource "aws_instance" "Akshay_EC2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = aws_key_pair.Akshay_key.key_name
  vpc_security_group_ids      = var.vpc_security_group_ids

  iam_instance_profile = var.iam_instance_profile

  tags = {
    Name = "Akshay_ec2"
  }

}

# resource "aws_eip" "_" {
#   vpc      = true
#   instance = aws_instance._.id
# }

resource "tls_private_key" "Akshay_new_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "Akshay_kp" {
  key_name   = var.key_name
  public_key = tls_private_key.Akshay_new_key.public_key_openssh
}