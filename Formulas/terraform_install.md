
# Download the Terraform binary

curl -LO https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip



# Unzip the downloaded file

unzip terraform_1.0.11_linux_amd64.zip



# Move the Terraform binary to a directory included in your system's PATH

sudo mv terraform /usr/local/bin/



# Verify the installation

terraform -v


@rifaterdemsahin ➜ /workspaces/Putty (main) $ terraform -v
Terraform v1.0.11
on linux_amd64

Your version of Terraform is out of date! The latest version
is 1.9.8. You can update by downloading from https://www.terraform.io/downloads.html
@rifaterdemsahin ➜ /workspaces/Putty (main) $ 
