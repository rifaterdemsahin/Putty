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
PS C:\projects\Putty\Symbols> 