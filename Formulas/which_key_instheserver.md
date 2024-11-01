# Placing SSH Keys on the Server

When you want to connect to a server from your local machine using SSH, you need to place the **public key** on the server. The public key is used to authenticate your connection without needing to send your private key over the network.

## Steps to Place the Public Key on the Server

1. **Generate an SSH Key Pair**: If you don't already have an SSH key pair, you can generate one using the following command on your local machine:
    ```sh
    ssh-keygen
    ```
    This will create a public key (`id_rsa.pub`) and a private key (`id_rsa`) in the `~/.ssh` directory.

2. **Copy the Public Key to the Server**: Use the `ssh-copy-id` command to copy your public key to the server. Replace `username` with your server's username and `hostname` with the server's IP address or hostname:
    ```sh
    ssh-copy-id username@hostname
    ```
    This command will append your public key to the `~/.ssh/authorized_keys` file on the server.

3. **Manual Method**: Alternatively, you can manually copy the contents of your public key (`~/.ssh/id_rsa.pub`) and add it to the `~/.ssh/authorized_keys` file on the server. You can use the following commands:
    ```sh
    cat ~/.ssh/id_rsa.pub | ssh username@hostname 'cat >> ~/.ssh/authorized_keys'
    ```

## Explanation

- **Public Key**: The public key is placed on the server in the `~/.ssh/authorized_keys` file. This key is used by the server to verify that the incoming connection is from a trusted source.
- **Private Key**: The private key remains on your local machine and should never be shared. It is used to initiate the SSH connection and prove your identity to the server.

By using SSH key authentication, you enhance the security of your connection and eliminate the need to enter a password each time you connect to the server.


Reference > Save to Lastpass

chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/edit.html?id=2710476206516831847