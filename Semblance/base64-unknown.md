PS C:\Users\Pexabo\.ssh> aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material "$(cat id_ed25519.pub | base64 | tr -d '\n')"
base64 : The term 'base64' is not recognized as the name of a cmdlet, function, script file, or operable program.
Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
At line:1 char:95
+ ... ed25519" --public-key-material "$(cat id_ed25519.pub | base64 | tr -d ...
+                                                            ~~~~~~
    + CategoryInfo          : ObjectNotFound: (base64:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException


usage: aws [options] <command> <subcommand> [<subcommand> ...] [parameters]
To see help text, you can run:

  aws help
  aws <command> help
  aws <command> <subcommand> help

aws.exe: error: argument --public-key-material: expected one argument

PS C:\Users\Pexabo\.ssh>

To solve the issue where the `base64` command is not recognized in PowerShell, you can use the following steps:

1. **Use OpenSSL for Base64 Encoding**: If you have OpenSSL installed, you can use it to encode your public key in base64. Run the following command in PowerShell:
   ```powershell
   cat id_ed25519.pub | openssl base64 -A
   ```

2. **Use .NET for Base64 Encoding**: If you don't have OpenSSL, you can use .NET to encode the public key in base64. Run the following command in PowerShell:
   ```powershell
   [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes((Get-Content -Raw -Path "id_ed25519.pub"))) -replace "`n", ""
   ```

3. **Import the Key Pair**: Use the AWS CLI to import the key pair with the correctly formatted and encoded public key:
   ```powershell
   $publicKeyBase64 = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes((Get-Content -Raw -Path "id_ed25519.pub"))) -replace "`n", ""
   aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material $publicKeyBase64
   ```

By following these steps, you should be able to successfully import your SSH key pair to AWS without encountering the "base64: The term 'base64' is not recognized" error.
