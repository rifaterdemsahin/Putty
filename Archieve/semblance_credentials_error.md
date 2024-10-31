@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ terraform apply
╷
│ Error: No valid credential sources found
│ 
│   with provider["registry.terraform.io/hashicorp/aws"],
│   on main.tf line 1, in provider "aws":
│    1:     provider "aws" {
│ 
│ Please see https://registry.terraform.io/providers/hashicorp/aws
│ for more information about providing credentials.
│ 
│ Error: failed to refresh cached credentials, no EC2 IMDS role found, operation error ec2imds: GetMetadata, failed to get API token, operation error ec2imds: getToken, http response error StatusCode:
│ 400, request to EC2 IMDS failed
│ 
╵
@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ 