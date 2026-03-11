resource "aws_security_group" "devops_sg" {
  name        = "devops-security-group"
  description = "Security group for DevOps assignment"

  ingress {
    description = "Allow SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["103.49.254.27/32"]
  }

  ingress {
    description = "Allow Node App access"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
}