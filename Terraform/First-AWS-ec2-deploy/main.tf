provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0f5ee92e2d63afc18"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
