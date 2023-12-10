terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "sample" {
  ami="ami-07a6cb7a78915f1a0"
  instance_type = "t3.micro"
  }
