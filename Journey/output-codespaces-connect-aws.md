
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_eip_association.poc_eip_assoc: Destroying... [id=eipassoc-0126f939542430cab]
aws_eip_association.poc_eip_assoc: Destruction complete after 1s
aws_instance.poc: Destroying... [id=i-0f62b88a651255c64]
aws_instance.poc: Still destroying... [id=i-0f62b88a651255c64, 10s elapsed]
aws_instance.poc: Still destroying... [id=i-0f62b88a651255c64, 20s elapsed]
aws_instance.poc: Still destroying... [id=i-0f62b88a651255c64, 30s elapsed]
aws_instance.poc: Still destroying... [id=i-0f62b88a651255c64, 40s elapsed]
aws_instance.poc: Still destroying... [id=i-0f62b88a651255c64, 50s elapsed]
aws_instance.poc: Destruction complete after 51s
aws_instance.poc: Creating...
aws_instance.poc: Still creating... [10s elapsed]
aws_instance.poc: Provisioning with 'local-exec'...
aws_instance.poc (local-exec): Executing: ["/bin/sh" "-c" "echo 'Instance created with IP: 44.237.75.161'"]
aws_instance.poc (local-exec): Instance created with IP: 44.237.75.161
aws_instance.poc: Creation complete after 12s [id=i-0fe4512e8e1350f33]
aws_eip_association.poc_eip_assoc: Creating...
aws_eip_association.poc_eip_assoc: Creation complete after 1s [id=eipassoc-0889ee79bb941607c]

Apply complete! Resources: 2 added, 0 changed, 2 destroyed.

Outputs:

poc_instance_ip = "44.237.75.161"
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ^C
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh ec2-user@44.237.75.161
The authenticity of host '44.237.75.161 (44.237.75.161)' can't be established.
ECDSA key fingerprint is SHA256:4ZjryjshPyw/q79sZDXkynlsmgXefbOBoIplxBULv5w.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '44.237.75.161' (ECDSA) to the list of known hosts.
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ vim id_ed25519.pub
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh ec2-user@44.237.75.161
ec2-user@44.237.75.161's password: 

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh ./id_ed25519.pub ec2-user@44.237.75.161
ssh: Could not resolve hostname ./id_ed25519.pub: Name or service not known
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ls
id_ed25519.pub  main.tf  provider.tf  terraform-aws-ec2  terraform.tfstate  terraform.tfstate.backup  terraform.tfvars
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh -i ./id_ed25519.pub ec2-user@44.237.75.161
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0666 for './id_ed25519.pub' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "./id_ed25519.pub": bad permissions
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 
ec2-user@44.237.75.161: Permission denied (publickey,gssapi-keyex,gssapi-with-mic,password).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh ./id_ed25519.pub ec2-user@44.237.75.161chmod 600 ./id_ed25519.pub
ssh: Could not resolve hostname ./id_ed25519.pub: Name or service not known
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ chmod 600 ./id_ed25519.pub
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh ./id_ed25519.pub ec2-user@44.237.75.161
ssh: Could not resolve hostname ./id_ed25519.pub: Name or service not known
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh -i ./id_ed25519.pub ec2-user@44.237.75.161
Load key "./id_ed25519.pub": invalid format
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 
ec2-user@44.237.75.161: Permission denied (publickey,gssapi-keyex,gssapi-with-mic,password).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ cat ./id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJipfuHrVcyvObrjt3+UMLo8UlBOmx1pTf9LZ0TvX/Xd azuread\pexabo@w11v32023720
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ vim id_ed25519
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh -i ./id_ed25519 ec2-user@44.237.75.161
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0666 for './id_ed25519' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "./id_ed25519": bad permissions
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 
Permission denied, please try again.
ec2-user@44.237.75.161's password: 
ec2-user@44.237.75.161: Permission denied (publickey,gssapi-keyex,gssapi-with-mic,password).
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ chmod 600 ./id_ed25519
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh -i ./id_ed25519 ec2-user@44.237.75.161
Last failed login: Fri Nov  1 12:26:04 UTC 2024 from 51.143.4.80 on ssh:notty
There were 7 failed login attempts since the last successful login.
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

[ec2-user@ip-172-31-19-23 ~]$ 