PS C:\Users\Pexabo\.ssh> aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material $publicKeyBase64

An error occurred (AuthFailure) when calling the ImportKeyPair operation: AWS was not able to validate the provided access credentials
PS C:\Users\Pexabo\.ssh>

To resolve the "AuthFailure" error, you need to ensure that your AWS CLI is configured with valid access credentials. You can do this by running the `aws configure` command and providing your AWS Access Key ID and Secret Access Key. Here are the steps:

1. **Configure AWS CLI**: Run the following command in PowerShell to configure your AWS CLI with your credentials:
   ```powershell
   aws configure
   ```
   You will be prompted to enter your AWS Access Key ID, Secret Access Key, default region name, and default output format. For example:
   ```
   AWS Access Key ID [None]: <your_access_key_id>
   AWS Secret Access Key [None]: <your_secret_access_key>
   Default region name [None]: us-west-2
   Default output format [None]: json
   ```

2. **Verify Configuration**: After configuring the AWS CLI, you can verify that your credentials are correctly set up by running:
   ```powershell
   aws sts get-caller-identity
   ```

   PS C:\Users\Pexabo\.ssh>  aws sts get-caller-identity

An error occurred (InvalidClientTokenId) when calling the GetCallerIdentity operation: The security token included in the request is invalid.
PS C:\Users\Pexabo\.ssh>


   This command should return details about your AWS account, confirming that the credentials are valid.

3. **Retry Importing the Key Pair**: Once your AWS CLI is configured with valid credentials, retry the command to import the key pair:
   ```powershell
   aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material $publicKeyBase64
   ```

By following these steps, you should be able to resolve the "AuthFailure" error and successfully import your SSH key pair to AWS.
