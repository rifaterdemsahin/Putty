   - Generate an SSH key pair on your client machine (if you don't already have one):
     ```bash
     ssh-keygen
     ```

   - Copy the public key to the Windows machine:
     ```bash
     ssh-copy-id username@hostname
     ```

     oc_instance_ip = "34.223.77.127"
PS C:\projects\Putty\Symbols>      ssh-keygen
Generating public/private ed25519 key pair.
Enter file in which to save the key (C:\Users\Pexabo/.ssh/id_ed25519):
C:\Users\Pexabo/.ssh/id_ed25519 already exists.
Overwrite (y/n)? y
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in C:\Users\Pexabo/.ssh/id_ed25519
Your public key has been saved in C:\Users\Pexabo/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:Up7YTLfUfBU1q8DjID/Iluz5uY6hrlld9WTjVIVhG3w azuread\pexabo@w11v32023720
The key's randomart image is:
+--[ED25519 256]--+
|             .+*B|
|          .o .++E|
|       .o.o=o=oo |
|      oB=++.O.o  |
|      o*S+.. +   |
|      +.o .      |
|     . =         |
|    o . + .      |
|   ooo ..=.      |
+----[SHA256]-----+
PS C:\projects\Putty\Symbols>      ssh-keygen

PS C:\projects\Putty\Symbols> cd C:\Users\Pexabo/.ssh 
PS C:\Users\Pexabo\.ssh> ls


    Directory: C:\Users\Pexabo\.ssh


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        01/11/2024     10:57            419 id_ed25519
-a----        01/11/2024     10:57            110 id_ed25519.pub
-a----        19/08/2024     14:25           3401 id_rsa
-a----        19/08/2024     14:25            754 id_rsa.pub
-a----        27/09/2024     14:15           9446 known_hosts
-a----        27/09/2024     12:47           8573 known_hosts.old

Move it to last pass
chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/edit.html?id=2710476206516831847