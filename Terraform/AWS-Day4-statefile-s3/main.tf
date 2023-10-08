provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "anoop" {
  instance_type = "t2.micro"
  ami = "ami-0f5ee92e2d63afc18"
}

resource "aws_s3_bucket" "example" {
  bucket = "anoop-s3-demo"
}

