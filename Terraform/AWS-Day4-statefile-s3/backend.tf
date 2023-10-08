terraform {
  backend "s3" {
    bucket = "anoop-s3-demo"
    region = "ap-south-1"
    key = "anoop/terraform.tfstate"
  }
}