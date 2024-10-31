
# Download the Terraform binary

curl -LO https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip



# Unzip the downloaded file

unzip terraform_1.0.11_linux_amd64.zip



# Move the Terraform binary to a directory included in your system's PATH

sudo mv terraform /usr/local/bin/



# Verify the installation

terraform -v
