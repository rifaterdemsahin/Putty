# Connecting with SSH using Username and Password

To connect to a remote server using SSH with a username and password, follow these steps:

1. **Open your terminal**: You can use any terminal emulator of your choice.

2. **Use the SSH command**: The basic syntax for the SSH command is:
    ```sh
    ssh username@hostname
    ```

3. **Enter your password**: After running the command, you will be prompted to enter the password for the specified username.

### Example

```sh
ssh user@example.com
```

After running this command, you will be prompted to enter the password for `user` on the server `example.com`.

### Notes

- Ensure that SSH is installed on your local machine.
- The remote server must have SSH enabled and configured to accept connections.

For more detailed information, you can refer to the [OpenSSH manual](https://man.openbsd.org/ssh).
