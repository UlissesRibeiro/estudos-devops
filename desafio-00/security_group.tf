resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_http_https"
  description = "Security group to allow SSH and HTTP/HTTPS"

  ingress {
    description      = "Allow SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.ip_access_ssh]
  }

  ingress {
    description      = "Allow HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Libera para todos os IPs. Substitua por IP específico para maior segurança.
  }

  ingress {
    description      = "Allow HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Libera para todos os IPs. Substitua por IP específico para maior segurança.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 permite todo o tráfego de saída
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_security_group"
  }
}
