│ Warning: Values for undeclared variables
│
│ In addition to the other similar warnings shown, 1 other variable(s) defined without being declared.
╵
╷
│ In addition to the other similar warnings shown, 1 other variable(s) defined without being declared.
╵
╷
╷
│ Warning: Argument is deprecated
│
│ Warning: Argument is deprecated
│
│   with aws_eip.poc_eip,
│   on main.tf line 62, in resource "aws_eip" "poc_eip":
│   on main.tf line 62, in resource "aws_eip" "poc_eip":
│   62:   vpc = true
│
│
│ use domain attribute instead
│
│ (and one more similar warning elsewhere)
│ (and one more similar warning elsewhere)
╵

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_eip_association.poc_eip_assoc: Destroying... [id=eipassoc-06ace1a0b61ee1417]
aws_eip_association.poc_eip_assoc: Destruction complete after 2s
aws_instance.poc: Destroying... [id=i-03f322068142b9f48]
aws_instance.poc: Still destroying... [id=i-03f322068142b9f48, 10s elapsed]
aws_instance.poc: Still destroying... [id=i-03f322068142b9f48, 20s elapsed]
aws_instance.poc: Still destroying... [id=i-03f322068142b9f48, 30s elapsed]
aws_instance.poc: Still destroying... [id=i-03f322068142b9f48, 40s elapsed]
aws_instance.poc: Still destroying... [id=i-03f322068142b9f48, 50s elapsed]
aws_instance.poc: Still destroying... [id=i-03f322068142b9f48, 1m0s elapsed]
aws_instance.poc: Destruction complete after 1m2s
aws_instance.poc: Creating...
╷
│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: f9dc576f-c62f-4285-b5aa-2fd74d5502ca, api error InvalidKeyPair.NotFound: The key pair 'id_ed25519.pub' does not exist
│
│   with aws_instance.poc,
│   on main.tf line 36, in resource "aws_instance" "poc":
│   36: resource "aws_instance" "poc" {
│
╵
PS C:\projects\Putty\Symbols> ls


    Directory: C:\projects\Putty\Symbols


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        01/11/2024     10:49                .terraform
d-----        01/11/2024     10:27                terraform-aws-ec2
-a----        01/11/2024     10:49           1377 .terraform.lock.hcl
-a----        01/11/2024     10:57            110 id_ed25519.pub
-a----        01/11/2024     11:18           1638 main.tf
-a----        01/11/2024     11:23            278 provider.tf
-a----        01/11/2024     11:25           6430 terraform.tfstate
-a----        01/11/2024     11:24          12105 terraform.tfstate.backup
-a----        01/11/2024     11:14            361 terraform.tfvars


PS C:\projects\Putty\Symbols>

The error message indicates that the key pair 'id_ed25519.pub' does not exist. This can happen for several reasons:

1. **Key Pair Not Uploaded to AWS**: Ensure that the key pair has been uploaded to AWS. You can do this via the AWS Management Console or using the AWS CLI. For example, using the AWS CLI:
   ```sh
   cd  C:\Users\Pexabo\.ssh
   aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material file://id_ed25519.pub
   ```

   PS C:\Users\Pexabo\.ssh> aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material file://id_ed25519.pub

You must specify a region. You can also configure your region by running "aws configure".
PS C:\Users\Pexabo\.ssh>

PS C:\Users\Pexabo\.ssh> aws configure
AWS Access Key ID [None]: <your_access_key_id>
AWS Secret Access Key [None]: <your_secret_access_key>
Default region name [None]: us-west-2
Default output format [None]: json

PS C:\Users\Pexabo\.ssh> aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material file://id_ed25519.pub


2. **Incorrect Key Name**: Verify that the key name specified in your Terraform configuration matches the key name in AWS. In your `main.tf`, you have:
   ```hcl
   variable "key_name" {
     description = "Name of the SSH key pair to use for the EC2 instance"
     type        = string
   }
   ```
   Ensure that the value provided for `key_name` matches the key name in AWS.

3. **Key Pair File Location**: Ensure that the key pair file `id_ed25519.pub` is located in the correct directory and is accessible. The file should be in the same directory as your Terraform configuration or the path should be correctly specified.

4. **Permissions Issue**: Ensure that the key pair file has the correct permissions and can be read by Terraform. You can check the file permissions using:
   ```sh
   ls -l id_ed25519.pub
   ```

   PS C:\projects\Putty\Symbols>   Get-Acl id_ed25519.pub | Format-List


    Directory: C:\projects\Putty\Symbols


Path   : Microsoft.PowerShell.Core\FileSystem::C:\projects\Putty\Symbols\id_ed25519.pub
Owner  : BUILTIN\Administrators
Group  : NT AUTHORITY\SYSTEM
Access : NT AUTHORITY\SYSTEM Allow  FullControl
         BUILTIN\Administrators Allow  FullControl
         BUILTIN\Users Allow  ReadAndExecute, Synchronize
         NT AUTHORITY\Authenticated Users Allow  Modify, Synchronize
         NT AUTHORITY\Authenticated Users Allow  -536805376
Audit  :
Sddl   : O:BAG:S-1-5-18D:(A;;FA;;;SY)(A;;FA;;;BA)(A;;0x1200a9;;;BU)(A;;0x1301bf;;;AU)(A;;0x1f01ff;;;BA)
PS C:\projects\Putty\Symbols>

By addressing these potential issues, you should be able to resolve the `InvalidKeyPair.NotFound` error and successfully create the EC2 instance.

│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: f9dc576f-c62f-4285-b5aa-2fd74d5502ca, api error InvalidKeyPair.NotFound: The key pair 'id_ed25519.pub' does not exist
│
│   with aws_instance.poc,
│   on main.tf line 36, in resource "aws_instance" "poc":
│   36: resource "aws_instance" "poc" {
│
╵
PS C:\projects\Putty\Symbols> kls
PS C:\projects\Putty\Symbols> kls
kls : The term 'kls' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path   
was included, verify that the path is correct and try again.
At line:1 char:1
was included, verify that the path is correct and try again.
At line:1 char:1
At line:1 char:1
+ kls
+ kls
+ ~~~
    + CategoryInfo          : ObjectNotFound: (kls:String) [], CommandNotFoundException
    + CategoryInfo          : ObjectNotFound: (kls:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException


PS C:\projects\Putty\Symbols> ls



    Directory: C:\projects\Putty\Symbols
    Directory: C:\projects\Putty\Symbols


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        01/11/2024     10:49                .terraform
d-----        01/11/2024     10:27                terraform-aws-ec2
-a----        01/11/2024     10:49           1377 .terraform.lock.hcl
-a----        01/11/2024     10:57            110 id_ed25519.pub
-a----        01/11/2024     11:18           1638 main.tf
-a----        01/11/2024     11:23            278 provider.tf
-a----        01/11/2024     11:25           6430 terraform.tfstate
-a----        01/11/2024     11:24          12105 terraform.tfstate.backup
-a----        01/11/2024     11:14            361 terraform.tfvars


PS C:\projects\Putty\Symbols>   ls -l id_ed25519.pub


    Directory: C:\projects\Putty\Symbols


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----

