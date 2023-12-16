# Terraform Block
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  # profile = "<optional>"
}

resource "aws_instance" "ec2-demo" {
  ami           = "ami-0666c668000b91fcb"
  instance_type = "t2.micro"
}