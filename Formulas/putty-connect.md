# PuTTY Connect and List Files

To connect to a remote server using PuTTY and list files, follow these steps:

1. **Open PuTTY**: Launch the PuTTY application on your computer.

2. **Configure Connection**:
    - **Host Name (or IP address)**: `44.241.157.32`
    - **Port**: `22` (default for SSH)
    - **Connection type**: `SSH`

3. **Start the Session**: Click on the `Open` button to start the session.

4. **Login**: When prompted, enter your username and password for the remote server.

5. **List Files**: Once logged in, you can list files in the directory by using the `ls` command:
    ```sh
    ls
    ```

6. **Exit**: To exit the session, type `exit` and press `Enter`.

```plaintext
$ ssh username@44.241.157.32
username@44.241.157.32's password: 
$ ls
```


## Using PuTTY Commands on Linux

To use PuTTY commands on Linux, you can use the `putty` and `pscp` commands. Follow these steps:

1. **Install PuTTY**: If PuTTY is not already installed, you can install it using your package manager. For example, on Debian-based systems:
    ```sh
    sudo apt-get install putty
    ```

2. **Connect to Remote Server**: Use the `putty` command to connect to the remote server:
    ```sh
    putty -ssh root@44.241.157.32
    ```

3. **List Files**: Once connected, you can list files in the directory by using the `ls` command:
    ```sh
    ls
    ```

4. **Exit**: To exit the session, type `exit` and press `Enter`.

```plaintext
ssh username@44.241.157.32
$ putty -ssh username@44.241.157.32
username@44.241.157.32's password: 
$ ls
```