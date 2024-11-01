# Putty File Copy

To copy a file using Putty from your local machine to a remote server, you can use the `pscp` command. Below is an example of how to copy the file `/workspaces/Putty/Symbols/astoryofadevopsengineer.md` to the destination `44.237.75.161` under a specific user.

## Command

```sh
pscp /workspaces/Putty/Symbols/astoryofadevopsengineer.md user@44.237.75.161:/path/to/destination/
pscp /workspaces/Putty/Symbols/astoryofadevopsengineer.md ec2-user@44.237.75.161:/

pscp /workspaces/Putty/Symbols/astoryofadevopsengineer.md ec2-user@44.237.75.161:/ -i ./id_ed25519
```

Replace `/path/to/destination/` with the actual path where you want to copy the file on the remote server.

## Example

```sh
pscp /workspaces/Putty/Symbols/astoryofadevopsengineer.md user@44.237.75.161:/home/user/
```

This command will copy the file to the `/home/user/` directory on the remote server.

## Notes

- Ensure that Putty is installed on your local machine.
- Make sure you have the necessary permissions to copy files to the destination directory on the remote server.
- You may be prompted to enter the password for the remote user.

For more information, refer to the [Putty documentation](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html).