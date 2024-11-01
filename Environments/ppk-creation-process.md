The issue here seems to stem from the format of the private key file `id_ed25519`. Putty tools, such as `pscp`, expect a key format compatible with Putty’s PPK or SSH-2 format but are unable to directly use an OpenSSH key in the new format without conversion.

To resolve this:

1. **Convert the Private Key to PPK Format**:
   Use `puttygen` to convert your OpenSSH key into a format Putty can read:
   ```bash
   puttygen ./id_ed25519 -O private -o id_ed25519.ppk
   ```
   @rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ puttygen ./id_ed25519 -O private -o id_ed25519.ppk
@rifaterdemsahin ➜ /workspaces/Putty/Symbols (main) $ 



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