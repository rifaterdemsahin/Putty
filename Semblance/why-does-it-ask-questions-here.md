@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $  pscp -i ./id_ed25519 /workspaces/Putty/Symbols/astoryofadevopsengineer.md ec2-user@44.237.75.161:/
Unable to use key file "./id_ed25519" (OpenSSH SSH-2 private key (new format))
ec2-user@44.237.75.161's password: 
Access denied
ec2-user@44.237.75.161's password: 
Access denied
ec2-user@44.237.75.161's password: 
Access denied
ec2-user@44.237.75.161's password: 
Access denied
ec2-user@44.237.75.161's password: 
Access denied
ec2-user@44.237.75.161's password: 
FATAL ERROR: Remote side sent disconnect message
type 2 (protocol error):
"Too many authentication failures"
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ ssh -i ./id_ed25519 ec2-user@44.237.75.161
Last failed login: Fri Nov  1 12:40:00 UTC 2024 from 51.143.4.80 on ssh:notty
There were 14 failed login attempts since the last successful login.
Last login: Fri Nov  1 12:26:14 2024 from 51.143.4.80
   ,     #_
   ~\_  ####_        Amazon Linux 2
  ~~  \_#####\
  ~~     \###|       AL2 End of Life is 2025-06-30.
  ~~       \#/ ___
   ~~       V~' '->
    ~~~         /    A newer version of Amazon Linux is available!
      ~~._.   _/
         _/ _/       Amazon Linux 2023, GA and supported until 2028-03-15.
       _/m/'           https://aws.amazon.com/linux/amazon-linux-2023/

[ec2-user@ip-172-31-19-23 ~]$ 


The issue here seems to stem from the format of the private key file `id_ed25519`. Putty tools, such as `pscp`, expect a key format compatible with Putty’s PPK or SSH-2 format but are unable to directly use an OpenSSH key in the new format without conversion.

To resolve this:

1. **Convert the Private Key to PPK Format**:
   Use `puttygen` to convert your OpenSSH key into a format Putty can read:
   ```bash
   puttygen ./id_ed25519 -O private -o id_ed25519.ppk
   ```
   This will create a file `id_ed25519.ppk` that `pscp` should recognize.

2. **Use the Converted Key with `pscp`**:
   Then retry your `pscp` command, specifying the newly converted `.ppk` file:
   ```bash
   pscp -i ./id_ed25519.ppk /workspaces/Putty/Symbols/astoryofadevopsengineer.md ec2-user@44.237.75.161:/
   ```

If you want to continue using OpenSSH, an alternative is to use `scp` instead of `pscp` since `scp` directly supports OpenSSH keys. This command should look like:
   ```bash
   scp -i ./id_ed25519 /workspaces/Putty/Symbols/astoryofadevopsengineer.md ec2-user@44.237.75.161:/
   ```

Let me know if this helps or if you run into further issues!