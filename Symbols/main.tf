    resource "aws_instance" "poc" {
      ami           = "ami-0c55b159cbfafe1f0" # Update with your preferred AMI
      instance_type = "t2.micro"

      tags = {
        Name = "poc-instance"
      }
    }