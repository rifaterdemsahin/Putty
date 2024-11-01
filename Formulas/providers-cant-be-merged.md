│ Error: Invalid provider configuration
│
│ Provider "registry.terraform.io/hashicorp/aws" requires explicit configuration. Add a provider block to the root module and configure the provider's     
│ required arguments as described in the provider documentation.
│
╵
╷
│ Error: No valid credential sources found
│
│   with provider["registry.terraform.io/hashicorp/aws"],
│   on <empty> line 0:
│   (source code not available)
│
│ Please see https://registry.terraform.io/providers/hashicorp/aws
│ for more information about providing credentials.
│
│ Error: failed to refresh cached credentials, no EC2 IMDS role found, operation error ec2imds: GetMetadata, exceeded maximum number of attempts, 3,       
│ request send failed, Get "http://169.254.169.254/latest/meta-data/iam/security-credentials/": dial tcp 169.254.169.254:80: connectex: A socket operation 
│ was attempted to an unreachable network.

