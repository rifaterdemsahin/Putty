# Roadmap

- Mermaid chart outlining a high-level flow for implementing a Terraform configuration to set up an AWS server with SSH, then using PuTTY for file transfer and test automation:


```mermaid
graph TD
    A[Start] --> B[Install Terraform]
    B --> C[Configure Terraform in the symbols folder]
    C --> D[Create Terraform Configuration Files]
    D --> E[Add Variables and tfvars to .gitignore]
    E --> F[Setup aws cli and do aws configure Set up AWS Provider in Terraform]
    F --> G[Save AWS Credentials to terraform.tfvars aws key name as the private one setting in tfvars file]
    G --> H[Define AWS EC2 Instance Resource check if it is running in the symbols folder]
    H --> I[Specify Instance Type, OS, and Region]
    I --> J[Add SSH Key Configuration for Access]
    J --> K[Run Terraform Init]
    K --> L[Run Terraform Apply]
    L --> M{AWS EC2 Instance Created?}
    M -->|Yes| N[Retrieve Public IP of Instance]
    M -->|No| Z[Check Configuration , first check with basic ssh login and dont use root but use ec2-user]
    N --> O[Install PuTTY on Local Windows Workstation]
    O --> P[Generate .ppk Key for PuTTY Authentication]
    P --> Q[Connect to EC2 via SSH Using PuTTY]
    Q --> R[Use PuTTY Secure Copy PSCP for File Transfer]
    R --> S[Transfer Test Automation Code to EC2]
    S --> T[Run Test Automation Code on EC2]
    T --> U[Check and Validate Results]
    U --> V[End]

    Z --> D
```

### Explanation of Steps

1. **Install and Configure Terraform**: Set up Terraform locally to manage infrastructure-as-code (IaC).
2. **Create Terraform Configuration**: Define the infrastructure specifications in a `.tf` file.
3. **Set up AWS Provider in Terraform**: Configure AWS provider with access credentials.
4. **Define AWS EC2 Instance Resource**: Specify the instance type, OS, region, etc., in Terraform.
5. **Add SSH Key Configuration for Access**: Define the SSH key pair for EC2 access.
6. **Run Terraform Init and Apply**: Initialize and apply the configuration to create resources.
7. **Retrieve Public IP of Instance**: Get the IP address to access the instance.
8. **Install PuTTY on Local Windows Workstation**: Install PuTTY to use SSH.
9. **Generate .ppk Key for PuTTY Authentication**: Convert the SSH private key to PuTTY's `.ppk` format.
10. **Connect to EC2 via SSH Using PuTTY**: Use PuTTY to SSH into the instance.
11. **Use PuTTY Secure Copy (PSCP) for File Transfer**: Use `pscp` to transfer files to the EC2 instance.
12. **Transfer Test Automation Code to EC2**: Move automation scripts to the instance.
13. **Run Test Automation Code on EC2**: Execute the test automation code on the server.
14. **Check and Validate Results**: Confirm the output of the test automation.
