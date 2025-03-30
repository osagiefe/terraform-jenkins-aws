terraform {
  backend "s3" {
    bucket = "bucket-eks-cluster-100"
    key    = "project/terraform.tfstate"
    region = "eu-west-2"
  }
}

