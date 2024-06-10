provider "aws" {
    region = "ap-south-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }

  backend "s3" {
    bucket                  = "standard-installation"
    key                     = "my-terraform-project"
    region                  = "ap-south-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}


