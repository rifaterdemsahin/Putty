Success! The configuration is valid.

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform apply
aws_security_group.ssh: Refreshing state... [id=sg-055638b940481ed09]
aws_instance.poc: Refreshing state... [id=i-0b6cd614a8408a905]
aws_eip.poc_eip: Refreshing state... [id=eipalloc-044095a1cfc975dab]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply":

  # aws_eip.poc_eip has been changed
  ~ resource "aws_eip" "poc_eip" {
        id                   = "eipalloc-044095a1cfc975dab"
      + tags                 = {}
        # (14 unchanged attributes hidden)
    }
  # aws_instance.poc has been changed
  ~ resource "aws_instance" "poc" {
        id                                   = "i-0b6cd614a8408a905"
      ~ public_dns                           = "ec2-54-189-240-164.us-west-2.compute.amazonaws.com" -> "ec2-44-241-157-32.us-west-2.compute.amazonaws.com"
      ~ public_ip                            = "54.189.240.164" -> "44.241.157.32"
        tags                                 = {
            "Name" = "poc-instance"
        }
        # (29 unchanged attributes hidden)








        # (8 unchanged blocks hidden)
    }
  # aws_security_group.ssh has been changed
  ~ resource "aws_security_group" "ssh" {
        id                     = "sg-055638b940481ed09"
        name                   = "poc-ssh-20241031153338402600000001"
      + tags                   = {}
        # (9 unchanged attributes hidden)
    }

Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may include actions to undo or respond to these changes.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.poc will be updated in-place
  ~ resource "aws_instance" "poc" {
        id                                   = "i-0b6cd614a8408a905"
        tags                                 = {
            "Name" = "poc-instance"
        }
      + user_data                            = "23b465a41cd219b45e35d752388d28ac173ef79b"
        # (31 unchanged attributes hidden)








        # (8 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.poc: Modifying... [id=i-0b6cd614a8408a905]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 10s elapsed]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 20s elapsed]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 30s elapsed]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 40s elapsed]
aws_instance.poc: Modifications complete after 42s [id=i-0b6cd614a8408a905]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

poc_instance_ip = "44.241.157.32"
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $  putty -ssh root@44.241.157.32
Unable to init server: Could not connect: Connection refused

(putty:46555): Gtk-WARNING **: 15:44:03.639: cannot open display: 
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh
usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface]
           [-b bind_address] [-c cipher_spec] [-D [bind_address:]port]
           [-E log_file] [-e escape_char] [-F configfile] [-I pkcs11]
           [-i identity_file] [-J [user@]host[:port]] [-L address]
           [-l login_name] [-m mac_spec] [-O ctl_cmd] [-o option] [-p port]
           [-Q query_option] [-R address] [-S ctl_path] [-W host:port]
           [-w local_tun[:remote_tun]] destination [command]
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform validate
Success! The configuration is valid.

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh root@44.241.157.32
The authenticity of host '44.241.157.32 (44.241.157.32)' can't be established.
ECDSA key fingerprint is SHA256:CmZA0m/E3LAn75zq4q1Wd3d+KP2JLAE1qOFpTx6KqWE.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '44.241.157.32' (ECDSA) to the list of known hosts.
root@44.241.157.32: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ sudo ssh root@44.241.157.32
The authenticity of host '44.241.157.32 (44.241.157.32)' can't be established.
ECDSA key fingerprint is SHA256:CmZA0m/E3LAn75zq4q1Wd3d+KP2JLAE1qOFpTx6KqWE.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '44.241.157.32' (ECDSA) to the list of known hosts.
root@44.241.157.32: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ sudo ssh root@44.241.157.32
root@44.241.157.32: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ cd ..
@rifaterdemsahin ➜ /workspaces/Putty (main) $  git pull; git add . ; git commit -m "Copilot push from cloud" ; git push;
Already up to date.
[main 891f2ad] Copilot push from cloud
 Author: Erdem <rifaterdemsahin@gmail.com>
 3 files changed, 62 insertions(+)
 create mode 100644 Formulas/putty-connect.md
 create mode 100644 Formulas/ssh-connect.md
Enumerating objects: 11, done.
Counting objects: 100% (11/11), done.
Delta compression using up to 2 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (7/7), 1.88 KiB | 1.88 MiB/s, done.
Total 7 (delta 3), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/rifaterdemsahin/Putty
   49d834f..891f2ad  main -> main
@rifaterdemsahin ➜ /workspaces/Putty (main) $  git pull; git add . ; git commit -m "Copilot push from cloud" ; git push;
Already up to date.
[main 84f7309] Copilot push from cloud
 Author: Erdem <rifaterdemsahin@gmail.com>
 1 file changed, 54 insertions(+), 50 deletions(-)
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 2 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 1.30 KiB | 1.30 MiB/s, done.
Total 4 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/rifaterdemsahin/Putty
   891f2ad..84f7309  main -> main
@rifaterdemsahin ➜ /workspaces/Putty (main) $ terraform validate
Success! The configuration is valid.

@rifaterdemsahin ➜ /workspaces/Putty (main) $ terraform apply
╷
│ Error: No configuration files
│ 
│ Apply requires configuration to be present. Applying without a configuration would mark everything for destruction, which is normally not what is desired. If you would like to destroy everything, run
│ 'terraform destroy' instead.
╵
@rifaterdemsahin ➜ /workspaces/Putty (main) $ cd Symbols
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform validate
Success! The configuration is valid.

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform apply
aws_security_group.ssh: Refreshing state... [id=sg-055638b940481ed09]
aws_instance.poc: Refreshing state... [id=i-0b6cd614a8408a905]
aws_eip.poc_eip: Refreshing state... [id=eipalloc-044095a1cfc975dab]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.poc will be updated in-place
  ~ resource "aws_instance" "poc" {
        id                                   = "i-0b6cd614a8408a905"
        tags                                 = {
            "Name" = "poc-instance"
        }
      ~ user_data                            = "23b465a41cd219b45e35d752388d28ac173ef79b" -> "77913c599ec4d24aac08269b4989b03c9b3c1ba4"
        # (31 unchanged attributes hidden)








        # (8 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.poc: Modifying... [id=i-0b6cd614a8408a905]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 10s elapsed]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 20s elapsed]
aws_instance.poc: Still modifying... [id=i-0b6cd614a8408a905, 30s elapsed]
aws_instance.poc: Modifications complete after 31s [id=i-0b6cd614a8408a905]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

poc_instance_ip = "44.241.157.32"
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh root@44.241.157.32
root@44.241.157.32: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ sudo ssh root@44.241.157.32
root@44.241.157.32: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh root@44.241.157.32
root@44.241.157.32: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ^C
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 


### Troubleshooting SSH Connection Issues

The error `Permission denied (publickey,gssapi-keyex,gssapi-with-mic)` indicates that the SSH connection is being denied due to authentication issues. Here are some steps to troubleshoot and resolve this issue:

1. **Check SSH Key Pair**:
    Ensure that the correct SSH key pair is being used. The public key should be added to the `~/.ssh/authorized_keys` file on the remote server.

2. **Verify SSH Agent**:
    Make sure your SSH agent is running and has the correct private key loaded. You can check this with:
    ```sh
    ssh-add -l
    ```

3. **Permissions on SSH Directory**:
    Ensure that the permissions on the `~/.ssh` directory and its contents are correct:
    ```sh
    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/authorized_keys
    ```

4. **User Data Script**:
    If you are using a user data script to set up the instance, verify that the script correctly configures the SSH keys.

5. **Security Group Rules**:
    Ensure that the security group associated with the instance allows SSH traffic (port 22).

6. **Instance Metadata**:
    Verify that the instance metadata service is correctly configured to provide the SSH keys.

By following these steps, you should be able to identify and resolve the issue preventing SSH access to the instance.

### Connecting with Username and Password

If you prefer to connect to your instance using just a username and password, you need to ensure that password authentication is enabled on the server. Here are the steps to configure this:

1. **Edit SSH Configuration**:
    Open the SSH configuration file on the remote server:
    ```sh
    sudo nano /etc/ssh/sshd_config
    ```

2. **Enable Password Authentication**:
    Find the line that says `PasswordAuthentication` and set it to `yes`. If the line is commented out (starts with `#`), uncomment it by removing the `#`:
    ```sh
    PasswordAuthentication yes
    ```

3. **Restart SSH Service**:
    After making the changes, restart the SSH service to apply the new configuration:
    ```sh
    sudo systemctl restart sshd
    ```

4. **Set User Password**:
    Ensure that the user you are trying to connect with has a password set. You can set or change the password using:
    ```sh
    sudo passwd <username>
    ```

5. **Connect via SSH**:
    Now, you should be able to connect to the server using just the username and password:
    ```sh
    ssh <username>@<server-ip>
    ```

By following these steps, you can configure your server to allow SSH connections using a username and password instead of SSH keys.