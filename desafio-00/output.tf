output "instance_public_ip" {
value = aws_instance.app_server.public_ip
description = "AWS EC2 Instance Public IP"
}