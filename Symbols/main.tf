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

    resource "aws_instance" "poc" {
      ami           = "ami-0c55b159cbfafe1f0" # Update with your preferred AMI
      instance_type = "t2.micro"
      security_groups = [aws_security_group.ssh.name]

      tags = {
        Name = "poc-instance"
      }
    }