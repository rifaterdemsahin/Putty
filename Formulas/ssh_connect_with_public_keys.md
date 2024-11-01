# Connecting to an EC2 Instance Using SSH and Public Key

To connect to an EC2 instance using SSH with a public key, follow these steps:

1. **Ensure your public key is added to the EC2 instance**:
    - The public key (`id_ed25519.pub`) should be added to the `~/.ssh/authorized_keys` file of the `ec2-user` on the EC2 instance.

2. **Use the SSH command to connect**:
    - Open your terminal.
    - Use the following command to connect to your EC2 instance:

    ```sh
    ssh -i /path/to/id_ed25519 ec2-user@44.237.75.161
    ```

    Replace `/path/to/id_ed25519` with the actual path to your private key file.

3. **Example**:
    ```sh
    ssh -i ~/.ssh/id_ed25519 ec2-user@44.237.75.161
    ```

Make sure your private key file has the correct permissions:

```sh
chmod 600 ~/.ssh/id_ed25519
```

This ensures that only you can read the private key file.
