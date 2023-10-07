resource "aws_instance" "name" {
  instance_type = var.instance_type
  ami = var.ami_type
  key_name = "demo"
}