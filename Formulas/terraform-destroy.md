      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + tags_all              = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.poc: Creating...
aws_instance.poc: Still creating... [10s elapsed]
aws_instance.poc: Creation complete after 13s [id=i-078ced9ae84ac4668]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $  git pull; git add . ; git commit -m "Copilot push from cloud" ; git push;
Already up to date.
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   ../Semblance/image-id-error.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        ../Imaginary/terraform-no-ami.png

no changes added to commit (use "git add" and/or "git commit -a")
Everything up-to-date
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform output
╷
│ Warning: No outputs found
│ 
│ The state file either has no outputs defined, or all the defined outputs are empty. Please define an output in your configuration with the `output` keyword and run `terraform refresh` for it to
│ become available. If you are using interpolation, please verify the interpolated value is not empty. You can use the `terraform console` command to assist.
╵
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform destroy
aws_security_group.ssh: Refreshing state... [id=sg-01f7ac891c1842e42]
aws_instance.poc: Refreshing state... [id=i-078ced9ae84ac4668]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.poc will be destroyed
  - resource "aws_instance" "poc" {
      - ami                                  = "ami-0c5aab85c243fa94f" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:145736815698:instance/i-078ced9ae84ac4668" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2c" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-078ced9ae84ac4668" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0ca9e4ced6a80ebc7" -> null
      - private_dns                          = "ip-172-31-12-195.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.12.195" -> null
      - public_dns                           = "ec2-35-92-171-171.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "35.92.171.171" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "poc-ssh-20241031152400631500000001",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-917383cc" -> null
      - tags                                 = {
          - "Name" = "poc-instance"
        } -> null
      - tags_all                             = {
          - "Name" = "poc-instance"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-01f7ac891c1842e42",
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
          - volume_id             = "vol-0a5a4287d3dbe6f5d" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

  # aws_security_group.ssh will be destroyed
  - resource "aws_security_group" "ssh" {
      - arn                    = "arn:aws:ec2:us-west-2:145736815698:security-group/sg-01f7ac891c1842e42" -> null
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
      - id                     = "sg-01f7ac891c1842e42" -> null
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
      - name                   = "poc-ssh-20241031152400631500000001" -> null
      - name_prefix            = "poc-ssh-" -> null
      - owner_id               = "145736815698" -> null
      - revoke_rules_on_delete = false -> null
      - tags                   = {} -> null
      - tags_all               = {} -> null
      - vpc_id                 = "vpc-5f79ed27" -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.poc: Destroying... [id=i-078ced9ae84ac4668]