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

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install docker.io git -y

              systemctl start docker
              systemctl enable docker

              usermod -aG docker ubuntu

              cd /home/ubuntu

              git clone https://github.com/MarvelousCoder/DevOps-Assignment.git

              cd DevOps-Assignment

              docker build -t devops-node-app .

              docker run -d -p 3000:3000 devops-node-app
              EOF

  tags = {
    Name = "DevOps-Assignment-EC2"
  }
}

output "application_url" {
  value = "http://${aws_instance.devops_ec2.public_ip}:3000"
}