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



chmod 600 ./id_ed25519.pub



chmod 600 ./id_ed25519.pub
