provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "description"
  type = map(string)
  
  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.large"
  }
}



module "ec2-instance" {
  source = "./module/ec2-instance"
  ami = var.ami
  instance_type = lookup(var.instance_type , terraform.workspace, "t2.micro")
}