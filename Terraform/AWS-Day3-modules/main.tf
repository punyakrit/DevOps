provider "aws" {
  region = "ap-south-1"
}

module "ec2-instance" {

source = "./modules/ec2_instance"
ami_type = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"
}

