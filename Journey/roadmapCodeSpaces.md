update local to codespaces environment temporal server in github codespaces

```mermaid
graph TD
    A[Start] --> B[Install and Configure Terraform]
    B --> C[Create Terraform Configuration]
    C --> D[Set up AWS Provider in Terraform]
    D --> E[Define AWS EC2 Instance Resource]
    E --> F[Add SSH Key Configuration for Access]
    F --> G[Run Terraform Init and Apply]
    G --> H{AWS EC2 Instance Created?}
    H -->|Yes| I[Retrieve Public IP of Instance]
    H -->|No| Z[Check Configuration]
    I --> J[Install PuTTY on Local Windows Workstation]
    J --> K[Generate .ppk Key for PuTTY Authentication]
    K --> L[Connect to EC2 via SSH Using PuTTY]
    L --> M[Use PuTTY Secure Copy (PSCP) for File Transfer]
    M --> N[Transfer Test Automation Code to EC2]
    N --> O[Run Test Automation Code on EC2]
    O --> P[Check and Validate Results]
    P --> Q[End]

    Z --> C
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
