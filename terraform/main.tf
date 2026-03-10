provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  tags = {
    Name = "DevOps-Assignment-EC2"
  }
}