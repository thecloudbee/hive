terraform {
  required_version = ">= 0.14.4"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "theclodbee_ec2" {
  ami = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "thecloudbee_ec2_lab"
  }
}