# Roadmap

- Mermaid chart outlining a high-level flow for implementing a Terraform configuration to set up an AWS server with SSH, then using PuTTY for file transfer and test automation:


```mermaid
graph TD
    A[Start] --> B[Install choco to workstation if not installed and vscode than install terraform from vscode terminal with choco install terraform]
    B --> C[Verify Terraform Installation]
    C --> D[Create symbols Folder]
    D --> E[Configure Terraform in symbols Folder]
    E --> F[Create main.tf File]
    F --> G[Create variables.tf File]
    G --> H[Create terraform.tfvars File]
    H --> I[Add Variables to .gitignore]
    I --> J[Install AWS CLI]
    J --> K[Configure AWS CLI]
    K --> L[Set up AWS Provider in Terraform]
    L --> M[Save AWS Credentials to terraform.tfvars]
    M --> N[Save AWS Key Name to terraform.tfvars]
    N --> O[Define AWS EC2 Instance Resource]
    O --> P[Check if EC2 Instance Resource is Running]
    P --> Q[Specify Instance Type]
    Q --> R[Specify OS]
    R --> S[Specify Region]
    S --> T[Add SSH Key Configuration for Access]
    T --> U[Run Terraform Init enter into the symbols folder]
    U --> V[Run Terraform Plan]
    V --> W[Run Terraform Apply]
    W --> X{AWS EC2 Instance Created?}
    X -->|Yes| Y[Retrieve Public IP of Instance]
    X -->|No| Z[Check Configuration]
    Z --> AA[Check Basic SSH Login]
    AA --> AB[Use ec2-user Instead of root]
    Y --> AC[Install PuTTY on Local Windows Workstation use choco install putty]
    AC --> AD[Generate .ppk Key for PuTTY Authentication]
    AD --> AE[Connect to EC2 via SSH Using PuTTY]
    AE --> AF[Use PuTTY Secure Copy PSCP for File Transfer]
    AF --> AG[Transfer Test Automation Code to EC2]
    AG --> AH[Run Test Automation Code on EC2]
    AH --> AI[Check and Validate Results]
    AI --> AJ[End]

    Z --> D
```

### Explanation of Steps

1. **Install and Configure Terraform**: Install Terraform on your local machine to manage infrastructure as code.
2. **Create Terraform Configuration**: Write the infrastructure specifications in a `.tf` file.
3. **Set up AWS Provider in Terraform**: Configure the AWS provider with your access credentials.
4. **Define AWS EC2 Instance Resource**: Specify the instance type, operating system, region, and other details in Terraform.
5. **Add SSH Key Configuration for Access**: Set up the SSH key pair for accessing the EC2 instance.
6. **Run Terraform Init and Apply**: Initialize Terraform and apply the configuration to create the resources.
7. **Retrieve Public IP of Instance**: Obtain the public IP address of the created instance.
8. **Install PuTTY on Local Windows Workstation**: Install PuTTY to enable SSH access.
9. **Generate .ppk Key for PuTTY Authentication**: Convert your SSH private key to PuTTY's `.ppk` format.
10. **Connect to EC2 via SSH Using PuTTY**: Use PuTTY to establish an SSH connection to the instance.
11. **Use PuTTY Secure Copy (PSCP) for File Transfer**: Utilize `pscp` to transfer files to the EC2 instance.
12. **Transfer Test Automation Code to EC2**: Upload your test automation scripts to the instance.
13. **Run Test Automation Code on EC2**: Execute the test automation scripts on the server.
14. **Check and Validate Results**: Verify the results of the test automation.
