## How to Include the Public Key in the Deployment Process for EC2 Creation in Terraform

To include an SSH public key in the deployment process for EC2 creation using Terraform, you need to modify both the provider configuration and the main Terraform configuration file. Below are the steps to achieve this:

### Step 1: Create a Provider Configuration File

Create a file named `provider.tf` and configure the AWS provider. This file will contain the necessary provider configuration for AWS.


To include an SSH public key in your EC2 creation using Terraform, you'll add the key as part of your `main.tf` configuration file for the EC2 instance. Here’s a step-by-step guide:

### Step 1: Configure the AWS Provider

In your Terraform project directory, create a file named `provider.tf` to configure the AWS provider:

```hcl
# provider.tf
provider "aws" {
  region = "us-east-1"  # replace with your preferred region
}
```

### Step 2: Create an SSH Key Pair Resource

You can either import an existing key pair or create a new one in your Terraform configuration.

#### Option 1: Use an Existing Key Pair
If you have an existing SSH key pair, reference it directly by adding its name in your EC2 instance configuration.

```hcl
# main.tf
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # replace with your preferred AMI
  instance_type = "t2.micro"

  key_name = "my_existing_key_pair"  # replace with your existing key pair name

  tags = {
    Name = "MyEC2Instance"
  }
}
```

#### Option 2: Create a New Key Pair in Terraform
You can generate a key pair with Terraform by using the `tls_private_key` resource.

```hcl
# main.tf
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key_pair" {
  key_name   = "my_generated_key"
  public_key = tls_private_key.example.public_key_openssh
}
```

### Step 3: Attach the Key Pair to the EC2 Instance

Once you have either referenced an existing key or generated a new one, you can attach it to your EC2 instance:

```hcl
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # replace with your preferred AMI
  instance_type = "t2.micro"

  key_name = aws_key_pair.generated_key_pair.key_name  # for generated key

  tags = {
    Name = "MyEC2Instance"
  }
}
```

### Step 4: Output the Private Key (for Generated Keys)

If you generated a new key pair in Terraform and need the private key locally, you can output it:

```hcl
output "private_key" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true  # keep it secure
}
```

### Step 5: Apply the Configuration

Run `terraform init`, `terraform plan`, and `terraform apply` to deploy the EC2 instance with your SSH key:

```sh
terraform init
terraform plan
terraform apply
```

This process creates an EC2 instance with your SSH key included, allowing you to connect securely using the specified key.