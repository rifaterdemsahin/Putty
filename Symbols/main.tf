resource "aws_security_group" "ssh" {
  name_prefix = "poc-ssh-"

  key_name = var.key_name

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "poc" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.ssh.name]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y openssh-server
              systemctl enable sshd
              systemctl start sshd
              echo 'root:RRmm123!' | chpasswd
              sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
              systemctl restart sshd
              EOF

  tags = {
    Name = "poc-instance"
  }

  provisioner "local-exec" {
    command = "echo 'Instance created with IP: ${aws_eip.poc_eip.public_ip}'"
  }
}

resource "aws_eip" "poc_eip" {
  vpc = true
}

resource "aws_eip_association" "poc_eip_assoc" {
  instance_id   = aws_instance.poc.id
  allocation_id = aws_eip.poc_eip.id
}

output "poc_instance_ip" {
  value = aws_eip.poc_eip.public_ip
}
