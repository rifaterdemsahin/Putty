To copy `id_ed25519.pub` from the current directory to the specified path `C:\projects\Putty\Symbols` in Windows, open PowerShell or Command Prompt and use the following command:

### Using PowerShell

```powershell
Copy-Item -Path .\id_ed25519.pub -Destination "C:\projects\Putty\Symbols"
```

Than add to git ignore

### Using Command Prompt

```cmd
copy .\id_ed25519.pub C:\projects\Putty\Symbols
```

Make sure you run the command from the directory where `id_ed25519.pub` is located. If the destination folder doesn’t exist, you’ll need to create it first:

```powershell
New-Item -ItemType Directory -Path "C:\projects\Putty\Symbols"
```

### Change Directory to SSH Keys Location

Before copying the `id_ed25519.pub` file, navigate to the directory where the SSH keys are located. Use the following commands:

### Using PowerShell
 C:\Users\Pexabo\.ssh
