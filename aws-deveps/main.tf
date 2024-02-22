provider "aws" {
   region = "us-east-1"
}

resource "aws_vpc" "testvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "privatesubnet1" {
  cidr_block = "10.0.0.0/24"
  vpc_id = "vpc-0c84f3f754a40197f"
} 

resource "aws_instance" "testinstance" {
  ami = "ami-0440d3b780d96b29d"
  subnet_id = "subnet-0aa3173c440d4c6a5"
  instance_type = "t2.micro"
}