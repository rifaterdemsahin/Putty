@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform init
There are some problems with the configuration, described below.

The Terraform configuration must be valid before initialization so that
Terraform can determine which modules and providers need to be installed.
╷
│ Error: Duplicate provider configuration
│ 
│   on provider.tf line 1:
│    1: provider "aws" {
│ 
│ A default (non-aliased) provider configuration for "aws" was already given at main.tf:1,5-19. If multiple configurations are required, set the "alias" argument for alternative configurations.
╵

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $  git pull; git add . ; git commit -m "Copilot push from cloud" ; git push;
Already up to date.
[main 7e928ad] Copilot push from cloud
 Author: Erdem <rifaterdemsahin@gmail.com>
 1 file changed, 4 deletions(-)
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 2 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 1.01 KiB | 1.01 MiB/s, done.
Total 4 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/rifaterdemsahin/Putty
   426dc30..7e928ad  main -> main
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.73.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $  git pull; git add . ; git commit -m "Copilot push from cloud" ; git push;
Already up to date.
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        ../Semblance/dual-provider-error.png

nothing added to commit but untracked files present (use "git add" to track)
Everything up-to-date
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform validate
Success! The configuration is valid.

@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ terraform plan
╷
│ Error: Retrieving AWS account details: validating provider credentials: retrieving caller identity from STS: operation error STS: GetCallerIdentity, https response error StatusCode: 403, RequestID: 6b0b3083-3f63-4808-9170-a41bb32150ea, api error InvalidClientTokenId: The security token included in the request is invalid.
│ 
│   with provider["registry.terraform.io/hashicorp/aws"],
│   on provider.tf line 1, in provider "aws":
│    1: provider "aws" {
│ 
╵
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 