PS C:\Users\Pexabo\.ssh> $publicKeyBase64 = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes((Get-Content
 -Raw -Path "id_ed25519.pub"))) -replace "`n", ""
PS C:\Users\Pexabo\.ssh> aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material $publicKeyBase64

PS C:\Users\Pexabo\.ssh> ls


    Directory: C:\Users\Pexabo\.ssh


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        01/11/2024     10:57            419 id_ed25519
-a----        01/11/2024     10:57            110 id_ed25519.pub
-a----        19/08/2024     14:25           3401 id_rsa
-a----        19/08/2024     14:25            754 id_rsa.pub
-a----        27/09/2024     14:15           9446 known_hosts
-a----        27/09/2024     12:47           8573 known_hosts.old


PS C:\Users\Pexabo\.ssh>


It looks like you’ve successfully imported your public SSH key (`id_ed25519.pub`) to AWS using PowerShell. This allows you to connect to your EC2 instances with this SSH key. Here’s a brief rundown of what each command did and any further steps you might consider:

1. **Convert Public Key to Base64:** 
   ```powershell
   $publicKeyBase64 = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes((Get-Content -Raw -Path "id_ed25519.pub"))) -replace "`n", ""
   ```
   This command reads your public key file (`id_ed25519.pub`) and converts it to a Base64-encoded string, which AWS requires for importing SSH keys.

2. **Import Key to AWS EC2:**
   ```powershell
   aws ec2 import-key-pair --key-name "id_ed25519" --public-key-material $publicKeyBase64
   ```
   This command imports the SSH key to AWS EC2 under the name `"id_ed25519"`. Once imported, this key pair will be available for use when launching or connecting to EC2 instances.

3. **Check Files in `.ssh` Directory:**
   Your list shows several key files:
   - `id_ed25519` and `id_ed25519.pub`: Your Ed25519 key pair, where `.pub` is the public key.
   - `id_rsa` and `id_rsa.pub`: An older RSA key pair.
   - `known_hosts` and `known_hosts.old`: These store fingerprints of servers you’ve connected to before.

### Next Steps
- **Using the Key for EC2 Instances**: When you launch a new EC2 instance, choose `"id_ed25519"` as the SSH key pair for access.
- **Connecting to the Instance**: Use the command below to SSH into your instance (replace `<public-ip>` with the instance's IP address):
  ```bash
  ssh -i "C:\Users\Pexabo\.ssh\id_ed25519" ec2-user@<public-ip>
  ```
- **Managing Permissions**: Ensure the `.ssh` directory and key files have restricted permissions:
  ```powershell
  icacls "C:\Users\Pexabo\.ssh\id_ed25519" /inheritance:r /grant:r "$env:USERNAME:F"
  ```

This process sets up secure SSH access to your EC2 instance via the imported key.