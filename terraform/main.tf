provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.micro"

  key_name = "devops-key"

  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "DevOps-Assignment-EC2"
  }
}