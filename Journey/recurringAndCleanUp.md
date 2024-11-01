
git pull; git add . && git commit -m "Codespace cloud commit" && git push;clear.exe 
git pull; git add . ; git commit -m "Local Workstation Windows commit" ; git push;clear


aws clean keys

aws configure 
>> last pass
chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/edit.html?id=8681380048827878682

```
aws ec2 delete-key-pair --key-name "id_ed25519"
```

Second run no id 
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ aws ec2 delete-key-pair --key-name "id_ed25519"
{
    "Return": true,
    "KeyPairId": "key-09cd09ed9afb6475f"
}
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ aws ec2 delete-key-pair --key-name "id_ed25519"
{
    "Return": true
}
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 


terraform destroy



@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform destroy
aws_security_group.ssh: Refreshing state... [id=sg-019fdbd22d5299a76]
aws_eip.poc_eip: Refreshing state... [id=eipalloc-017b4a1d76f7a4816]
aws_instance.poc: Refreshing state... [id=i-0fe4512e8e1350f33]
aws_eip_association.poc_eip_assoc: Refreshing state... [id=eipassoc-0889ee79bb941607c]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply":

  # aws_eip.poc_eip has been changed
  ~ resource "aws_eip" "poc_eip" {
      ~ association_id       = "eipassoc-0126f939542430cab" -> "eipassoc-0889ee79bb941607c"
        id                   = "eipalloc-017b4a1d76f7a4816"
      ~ instance             = "i-0f62b88a651255c64" -> "i-0fe4512e8e1350f33"
      ~ network_interface    = "eni-02c56a2c10463c432" -> "eni-0b534933bc902b6f3"
      ~ private_dns          = "ip-172-31-0-217.us-west-2.compute.internal" -> "ip-172-31-19-23.us-west-2.compute.internal"
      ~ private_ip           = "172.31.0.217" -> "172.31.19.23"
        tags                 = {}
        # (9 unchanged attributes hidden)
    }
  # aws_instance.poc has been changed
  ~ resource "aws_instance" "poc" {
        id                                   = "i-0fe4512e8e1350f33"
      ~ public_dns                           = "ec2-35-87-41-150.us-west-2.compute.amazonaws.com" -> "ec2-44-237-75-161.us-west-2.compute.amazonaws.com"
      ~ public_ip                            = "35.87.41.150" -> "44.237.75.161"
        tags                                 = {
            "Name" = "poc-instance"
        }
        # (31 unchanged attributes hidden)








        # (8 unchanged blocks hidden)
    }

Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may include actions to undo or
respond to these changes.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_eip.poc_eip will be destroyed
  - resource "aws_eip" "poc_eip" {
      - allocation_id        = "eipalloc-017b4a1d76f7a4816" -> null
      - arn                  = "arn:aws:ec2:us-west-2:145736815698:elastic-ip/eipalloc-017b4a1d76f7a4816" -> null
      - association_id       = "eipassoc-0889ee79bb941607c" -> null
      - domain               = "vpc" -> null
      - id                   = "eipalloc-017b4a1d76f7a4816" -> null
      - instance             = "i-0fe4512e8e1350f33" -> null
      - network_border_group = "us-west-2" -> null
      - network_interface    = "eni-0b534933bc902b6f3" -> null
      - private_dns          = "ip-172-31-19-23.us-west-2.compute.internal" -> null
      - private_ip           = "172.31.19.23" -> null
      - public_dns           = "ec2-44-237-75-161.us-west-2.compute.amazonaws.com" -> null
      - public_ip            = "44.237.75.161" -> null
      - public_ipv4_pool     = "amazon" -> null
      - tags                 = {} -> null
      - tags_all             = {} -> null
      - vpc                  = true -> null
    }

  # aws_eip_association.poc_eip_assoc will be destroyed
  - resource "aws_eip_association" "poc_eip_assoc" {
      - allocation_id        = "eipalloc-017b4a1d76f7a4816" -> null
      - id                   = "eipassoc-0889ee79bb941607c" -> null
      - instance_id          = "i-0fe4512e8e1350f33" -> null
      - network_interface_id = "eni-0b534933bc902b6f3" -> null
      - private_ip_address   = "172.31.19.23" -> null
      - public_ip            = "44.237.75.161" -> null
    }

  # aws_instance.poc will be destroyed
  - resource "aws_instance" "poc" {
      - ami                                  = "ami-0c5aab85c243fa94f" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:145736815698:instance/i-0fe4512e8e1350f33" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0fe4512e8e1350f33" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "id_ed25519" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0b534933bc902b6f3" -> null
      - private_dns                          = "ip-172-31-19-23.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.19.23" -> null
      - public_dns                           = "ec2-44-237-75-161.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "44.237.75.161" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "poc-ssh-20241031162734898800000001",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-39fc1d41" -> null
      - tags                                 = {
          - "Name" = "poc-instance"
        } -> null
      - tags_all                             = {
          - "Name" = "poc-instance"
        } -> null
      - tenancy                              = "default" -> null
      - user_data                            = "069086aa6139d164decca2ab477fde6b28ff74a9" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-019fdbd22d5299a76",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - tags_all              = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-03281532bc130970a" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_security_group.ssh will be destroyed
  - resource "aws_security_group" "ssh" {
      - arn                    = "arn:aws:ec2:us-west-2:145736815698:security-group/sg-019fdbd22d5299a76" -> null
      - description            = "Managed by Terraform" -> null
      - egress                 = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 0
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "-1"
              - security_groups  = []
              - self             = false
              - to_port          = 0
            },
        ] -> null
      - id                     = "sg-019fdbd22d5299a76" -> null
      - ingress                = [
          - {
              - cidr_blocks      = [
                  - "0.0.0.0/0",
                ]
              - description      = ""
              - from_port        = 22
              - ipv6_cidr_blocks = []
              - prefix_list_ids  = []
              - protocol         = "tcp"
              - security_groups  = []
              - self             = false
              - to_port          = 22
            },
        ] -> null
      - name                   = "poc-ssh-20241031162734898800000001" -> null
      - name_prefix            = "poc-ssh-" -> null
      - owner_id               = "145736815698" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {} -> null
      - tags_all               = {} -> null
      - vpc_id                 = "vpc-5f79ed27" -> null
    }

Plan: 0 to add, 0 to change, 4 to destroy.

Changes to Outputs:
  - poc_instance_ip = "44.237.75.161" -> null
╷
│ Warning: Value for undeclared variable
│ 
│ The root module does not declare a variable named "access_key" but a value was found in file "terraform.tfvars". If you meant to use this value, add a "variable" block to the
│ configuration.
│ 
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To reduce the verbosity of
│ these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Value for undeclared variable
│ 
│ The root module does not declare a variable named "secret_key" but a value was found in file "terraform.tfvars". If you meant to use this value, add a "variable" block to the
│ configuration.
│ 
│ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your organization. To reduce the verbosity of
│ these warnings, use the -compact-warnings option.
╵
╷
│ Warning: Values for undeclared variables
│ 
│ In addition to the other similar warnings shown, 1 other variable(s) defined without being declared.
╵
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

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_eip_association.poc_eip_assoc: Destroying... [id=eipassoc-0889ee79bb941607c]
aws_eip_association.poc_eip_assoc: Destruction complete after 1s
aws_instance.poc: Destroying... [id=i-0fe4512e8e1350f33]
aws_instance.poc: Still destroying... [id=i-0fe4512e8e1350f33, 10s elapsed