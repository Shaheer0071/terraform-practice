terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "mt15-remote-state"
    key    = "ec2-demo"
    region = "us-east-1"
    dynamodb_table = "mt15-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}