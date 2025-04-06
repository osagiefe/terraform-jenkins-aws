terraform {
  backend "s3" {
    bucket = "ikeja-q12"
    key    = "project/terraform.tfstate"
    region = "us-east-1"
  }
}

