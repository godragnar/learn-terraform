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
  ami="ami-03265a0778a880afb"
  instance_type = "t3.micro"
  }
