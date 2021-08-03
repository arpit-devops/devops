variable "subnet_id1" {
}

variable "subnet_id2" {
}

variable "rds_security_grp_id" {

}

variable "identifier" {
default = "mysql"
}
variable "engine" {
default = "mysql"
}
variable "engine_version" {
default = "8.0.15"
}
variable "instance_class" {
default = "db.t2.micro"
}
variable "allocated_storage" {
default = 10
}
variable "name" {
default = "Akshay_rds"
}
variable "username" {
default = "admin"
}
variable "password" {
  description = "data base password"
  default = "admin1234"
}
variable "port" {
default = 3306
}
variable "publicly_accessible" {
default = false
}

variable "multi_az" {
default = true
}



resource "aws_db_subnet_group" "Akshay_rds_subnet" {
  name       = "akshay-subnet-group"
  subnet_ids = ["${var.subnet_id1[0]}", "${var.subnet_id2[0]}"]

  tags = {
    Name = "Akshay subnet group"
  }
}



resource "aws_db_instance" "Akshay_rds" {
  identifier = "rdsdemo"

  allocated_storage       = var.allocated_storage
  #backup_retention_period = var.backup_retention_period
  #backup_window           = var.backup_window
  #maintenance_window      = var.maintenance_window
  db_subnet_group_name    = aws_db_subnet_group.Akshay_rds_subnet.id
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  multi_az                = var.multi_az
  name                    = var.name
  username                = var.username
  password                = var.password
  port                    = var.port
  publicly_accessible     = var.publicly_accessible
  
  vpc_security_group_ids = ["${var.rds_security_grp_id}"]

  #final_snapshot_identifier = var.final_snapshot_identifier
  #snapshot_identifier       = var.snapshot_identifier
  skip_final_snapshot       = true

  #performance_insights_enabled = var.performance_insights_enabled 
}