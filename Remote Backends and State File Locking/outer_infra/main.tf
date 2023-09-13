provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  tags = {
    Name = "terra-prac"
  }
}

