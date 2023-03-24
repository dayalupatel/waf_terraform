provider "aws" {
  region = var.region
}

terraform {

  required_providers {
    aws = {
    source = "hashicorp/aws"
    version = "4.50.0"
    }
  }
  backend "s3" {
    bucket = var.bucket
    region = var.region
    key = var.key
  }
}
