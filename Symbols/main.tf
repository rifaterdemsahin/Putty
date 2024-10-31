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

      tags = {
        Name = "poc-instance"
      }
    }