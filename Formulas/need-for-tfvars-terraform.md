# Creating a terraform.tfvars File

A `terraform.tfvars` file is used to set variable values for your Terraform configuration. This file allows you to define values for variables that are used in your Terraform scripts, making it easier to manage and change configurations without modifying the main Terraform files.

## Steps to Create a terraform.tfvars File

1. **Create the terraform.tfvars File**:
   - In your project directory, create a new file named `terraform.tfvars`.

2. **Define Variable Values**:
   - Open the `terraform.tfvars` file and define the values for your variables. For example:
     ```hcl
     region     = "us-west-2"
     access_key = "your_aws_access_key"
     secret_key = "your_aws_secret_key"
     key_name   = "id_ed25519.pub"
     ```

3. **Reference Variables in Your Terraform Configuration**:
   - In your Terraform configuration files (e.g., `main.tf`), reference the variables defined in the `terraform.tfvars` file. For example:
     ```hcl
     provider "aws" {
       region     = var.region
       access_key = var.access_key
       secret_key = var.secret_key
     }

     resource "aws_security_group" "ssh" {
       key_name = var.key_name
     }
     ```

## Explanation

- **region**: Specifies the AWS region where your resources will be created.
- **access_key**: Your AWS access key for authentication.
- **secret_key**: Your AWS secret key for authentication.
- **key_name**: The name of the SSH key pair to be used for accessing your instances.

By using a `terraform.tfvars` file, you can easily manage and update your variable values without modifying your main Terraform configuration files. This approach promotes better organization and maintainability of your Terraform projects.
