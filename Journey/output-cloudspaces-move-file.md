Have your files in the workstation

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ls -ltr
total 52
drwxrwxrwx+ 2 codespace root       4096 Oct 31 14:56 terraform-aws-ec2
-rw-rw-rw-  1 codespace codespace   255 Oct 31 15:19 provider.tf
-rw-rw-rw-  1 codespace codespace  1566 Nov  1 12:05 main.tf
-rw-rw-rw-  1 codespace codespace   353 Nov  1 12:12 terraform.tfvars
-rw-rw-rw-  1 codespace codespace 12081 Nov  1 12:13 terraform.tfstate.backup
-rw-rw-rw-  1 codespace codespace 12203 Nov  1 12:14 terraform.tfstate
-rw-r--r--  1 codespace codespace  2774 Nov  1 12:29 astoryofadevopsengineer.md
-rw-------  1 codespace codespace   420 Nov  1 12:36 id_ed25519
-rw-------  1 codespace codespace   295 Nov  1 12:42 id_ed25519.ppk
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ pscp -v -i ./id_ed25519.ppk /workspaces/Putty/Symbols/astoryofadevopsengineer.md ec2-user@44.237.75.161:/home/ec2-user
Looking up host "44.237.75.161" for SSH connection
Connecting to 44.237.75.161 port 22
We claim version: SSH-2.0-PuTTY_Release_0.73
Remote version: SSH-2.0-OpenSSH_7.4
Using SSH protocol version 2
Doing ECDH key exchange with curve Curve25519 and hash SHA-256 (SHA-NI accelerated)
Server also has ecdsa-sha2-nistp256/ssh-rsa host keys, but we don't know any of them
Host key fingerprint is:
ssh-ed25519 255 e4:33:12:87:b1:7a:8f:b2:74:fe:cd:be:62:5a:18:a0
Initialised AES-256 SDCTR (AES-NI accelerated) outbound encryption
Initialised HMAC-SHA-256 (SHA-NI accelerated) outbound MAC algorithm
Initialised AES-256 SDCTR (AES-NI accelerated) inbound encryption
Initialised HMAC-SHA-256 (SHA-NI accelerated) inbound MAC algorithm
Reading key file "./id_ed25519.ppk"
Using username "ec2-user".
Offered public key
Offer of public key accepted
Authenticating with public key "azuread\pexabo@w11v32023720"
Sent public key signature
Access granted
Opening main session channel
Opened main channel
Started a shell/command
Using SFTP
Connected to 44.237.75.161
Sending file astoryofadevopsengineer.md, size=2774
astoryofadevopsengineer.m | 2 kB |   2.7 kB/s | ETA: 00:00:00 | 100%
Session sent command exit status 0
Main session channel closed
All channels closed
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 

Check them in the server

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh -i ./id_ed25519 ec2-user@44.237.75.161
Last failed login: Fri Nov  1 12:40:00 UTC 2024 from 51.143.4.80 on ssh:notty
There were 14 failed login attempts since the last successful login.
Last login: Fri Nov  1 12:26:14 2024 from 51.143.4.80
   ,     #_
   ~\_  ####_        Amazon Linux 2
  ~~  \_#####\
  ~~     \###|       AL2 End of Life is 2025-06-30.
  ~~       \#/ ___
   ~~       V~' '->
    ~~~         /    A newer version of Amazon Linux is available!
      ~~._.   _/
         _/ _/       Amazon Linux 2023, GA and supported until 2028-03-15.
       _/m/'           https://aws.amazon.com/linux/amazon-linux-2023/

[ec2-user@ip-172-31-19-23 ~]$ ls
[ec2-user@ip-172-31-19-23 ~]$ pwd
/home/ec2-user
[ec2-user@ip-172-31-19-23 ~]$ ls
astoryofadevopsengineer.md
[ec2-user@ip-172-31-19-23 ~]$ 


