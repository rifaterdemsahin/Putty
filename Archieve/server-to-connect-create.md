# AWS EC2 Instance with Terraform

This guide will help you create and delete an AWS EC2 instance using Terraform.

## Prerequisites

- Terraform installed on your machine
- AWS CLI configured with your credentials

## Create an EC2 Instance

1. **Create a new directory for your Terraform files:**

    ```sh
    mkdir terraform-aws-ec2
    cd Symbols/terraform-aws-ec2
    ```

2. **Create a `main.tf` file with the following content:**

    ```hcl
    provider "aws" {
      region = "us-west-2"
    }

    resource "aws_instance" "example" {
      ami           = "ami-0c55b159cbfafe1f0" # Update with your preferred AMI
      instance_type = "t2.micro"

      tags = {
        Name = "example-instance"
      }
    }
    ```

3. **Initialize Terraform:**

    ```sh
    terraform init
    ```

4. **Apply the configuration to create the instance:**

    ```sh
    terraform apply
    ```

    Type `yes` when prompted to confirm the creation.

## Delete the EC2 Instance

1. **To delete the instance, run:**

    ```sh
    terraform destroy
    ```

    Type `yes` when prompted to confirm the deletion.

## Conclusion

You have successfully created and deleted an AWS EC2 instance using Terraform.