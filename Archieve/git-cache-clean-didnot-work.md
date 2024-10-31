@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ git rm --cached Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/
fatal: pathspec 'Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/' did not match any files
@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ ^C
@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ git rm --cached Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/terraform-provider-aws_v5.73.0_x5
fatal: pathspec 'Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/terraform-provider-aws_v5.73.0_x5' did not match any files
@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ ^C
@rifaterdemsahin ➜ /workspaces/Putty/Symbols/terraform-aws-ec2 (main) $ cd ..
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ cd ..
@rifaterdemsahin ➜ /workspaces/Putty (main) $ git rm -r --cached .
rm '.gitignore'
rm '.vscode/arm_toolchain.json'
rm '.vscode/settings.json'
rm 'Formulas/how_to_use_putty.md'
rm 'Formulas/public-practical-linux-to-test.md'
rm 'Formulas/putty_hands_on_implementation.md'
rm 'Formulas/server-to-connect-create.md'
rm 'Formulas/terraform_init.md'
rm 'Formulas/terraform_install.md'
rm 'Formulas/why_use_putty.md'
rm 'Imaginary/explicit-gitignore-added.png'
rm 'Imaginary/fresh_install.png'
rm 'Imaginary/gitignore-create-gpt.png'
rm 'Imaginary/not-to-push-terraform.png'
rm 'Imaginary/port-22-public-putty-test.png'
rm 'Imaginary/redirect-is-the-issue.png'
rm 'README.md'
rm 'Real/okr.md'
rm 'Semblance/howtoexclude.md'
rm 'Semblance/last-resort-delete-terrafor].png'
rm 'Semblance/lfs-fix.md'
rm 'Semblance/semblance-github-limits.png'
rm 'Semblance/semblance_credentials_error.md'
rm 'Semblance/semblance_install_putty.md'
rm 'Semblance/semblance_self_Connect_error.md'
rm 'Semblance/terraform-files-git-error.md'
rm 'Semblance/terraform_install.md'
rm 'Symbols/terraform-aws-ec2/.gitattributes'
rm 'Symbols/terraform-aws-ec2/.gitignore'
rm 'Symbols/terraform-aws-ec2/main.tf'
@rifaterdemsahin ➜ /workspaces/Putty (main) $ git add .
@rifaterdemsahin ➜ /workspaces/Putty (main) $ git add .
@rifaterdemsahin ➜ /workspaces/Putty (main) $ git commit -m "Clean all files from Git cache"
[main d41b2b0] Clean all files from Git cache
 Author: Erdem <rifaterdemsahin@gmail.com>
 3 files changed, 149 insertions(+)
 create mode 100644 Semblance/delete-manually-git-cache.md
 create mode 100644 Semblance/git-cache-add.png
 create mode 100644 Semblance/git-cache-delete.png
@rifaterdemsahin ➜ /workspaces/Putty (main) $ git push origin main
Enumerating objects: 89, done.
Counting objects: 100% (89/89), done.
Delta compression using up to 2 threads
Compressing objects: 100% (68/68), done.
Writing objects: 100% (83/83), 129.61 MiB | 26.58 MiB/s, done.
Total 83 (delta 27), reused 1 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (27/27), completed with 1 local object.
remote: error: Trace: 5ea6a63c20a60dbacdb841216b6dd97a2faf6dc54eddc7aebc233e6ba174ebce
remote: error: See https://gh.io/lfs for more information.
remote: error: File Symbols/terraform-aws-ec2/.terraform/providers/registry.terraform.io/hashicorp/aws/5.73.0/linux_amd64/terraform-provider-aws_v5.73.0_x5 is 600.51 MB; this exceeds GitHub's file size limit of 100.00 MB
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
To https://github.com/rifaterdemsahin/Putty
 ! [remote rejected] main -> main (pre-receive hook declined)
error: failed to push some refs to 'https://github.com/rifaterdemsahin/Putty'