resource "aws_security_group" "ssh" {
  name_prefix = "poc-ssh-"

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

  provisioner "remote-exec" {
    inline = [
      "systemctl is-active sshd"
    ]

    connection {
      type        = "ssh"
      user        = "root"
      password    = "RRmm123!"
      host        = aws_eip.poc_eip.public_ip
    }
  }
}

resource "aws_eip" "poc_eip" {
  instance = aws_instance.poc.id
  depends_on = [aws_instance.poc]
}

output "poc_instance_ip" {
  value = aws_eip.poc_eip.public_ip
}
