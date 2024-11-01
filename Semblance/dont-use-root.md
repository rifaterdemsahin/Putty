╷
│ Warning: Argument is deprecated
│
│   with aws_eip.poc_eip,
│   on main.tf line 62, in resource "aws_eip" "poc_eip":
│   62:   vpc = true
│
│ use domain attribute instead
│
│ (and one more similar warning elsewhere)
╵

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.poc: Creating...
aws_instance.poc: Still creating... [10s elapsed]
aws_instance.poc: Provisioning with 'local-exec'...
aws_instance.poc (local-exec): Executing: ["cmd" "/C" "echo 'Instance created with IP: 34.223.77.127'"]
aws_instance.poc (local-exec): 'Instance created with IP: 34.223.77.127'
aws_instance.poc: Creation complete after 15s [id=i-09e784f1fb637be54]
aws_eip_association.poc_eip_assoc: Creating...
aws_eip_association.poc_eip_assoc: Creation complete after 1s [id=eipassoc-0f482727434c98710]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

poc_instance_ip = "34.223.77.127"
PS C:\projects\Putty\Symbols> ssh root@34.223.77.127
The authenticity of host '34.223.77.127 (34.223.77.127)' can't be established.
ED25519 key fingerprint is SHA256:oHhSu3SXAODfDVMarlJdff4HuLawFo8v0jIuZv6dkcw.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '34.223.77.127' (ED25519) to the list of known hosts.
Please login as the user "ec2-user" rather than the user "root".


^[[A

Connection to 34.223.77.127 closed.
PS C:\projects\Putty\Symbols>