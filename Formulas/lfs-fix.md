rifaterdemsahin: why do i still get the error > @rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ git push origin main
Enumerating objects: 64, done.
Counting objects: 100% (64/64), done.
Delta compression using up to 2 threads
Compressing objects: 100% (46/46), done.
Writing objects: 100% (58/58), 129.14 MiB | 30.38 MiB/s, done.
Total 58 (delta 18), reused 1 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (18/18), completed with 2 local objects.
remote: error: Trace: a519c8cc3dbd1c0a9428288267924eb8ac0d7b3914795fcd854942d7c8a09c2f
remote: error: See https://gh.io/lfs for more information.
remote: error: File Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/terraform-provider-aws_v5.73.0_x5 is 600.51 MB; this exceeds GitHub's file size limit of 100.00 MB
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
To https://github.com/rifaterdemsahin/Putty
 ! [remote rejected] main -> main (pre-receive hook declined)
error: failed to push some refs to 'https://github.com/rifaterdemsahin/Putty'
@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ 

GitHub Copilot: The error indicates that a file exceeds GitHub's file size limit. To fix this, you should remove the large file from the repository history and use Git Large File Storage (LFS) for such files.





```bash

# Install Git LFS

git lfs install



# Track the large file with Git LFS

git lfs track "Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/terraform-provider-aws_v5.73.0_x5"



# Add the changes to .gitattributes

git add .gitattributes



# Commit the changes

git commit -m "Track large file with Git LFS"



# Remove the large file from the repository history

git rm --cached "Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/terraform-provider-aws_v5.73.0_x5"

git commit -m "Remove large file from repository history"



# Push the changes

git push origin main

```