resource "aws_security_group" "eks_sg" {
  name        = "eks_sg"
  description = "EKS cluster security group"
  vpc_id      = aws_vpc.main_vpc.id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
  }
}