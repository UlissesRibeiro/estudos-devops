resource "aws_instance" "app_server" {
  ami           = "ami-0b8c6b923777519db"
  instance_type = "t2.micro"
  key_name = aws_key_pair.meu_keypair.key_name  # Associa a chave
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]


  user_data = file("apache.sh")

  tags = {
    Name = var.instance_name
  }
}

resource "aws_key_pair" "meu_keypair" {
  key_name   = "meu-key-pair"
  public_key = file("/root/.ssh/id_rsa.pub")  # Local onde a chave pública está
}