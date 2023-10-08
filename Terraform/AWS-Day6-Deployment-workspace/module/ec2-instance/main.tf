
variable "ami" {
description = "This is AMI type"
  
}

variable "instance_type" {
  description = "This is instance type"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami = var.ami
}