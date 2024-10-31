@rifaterdemsahin ➜ /workspaces/Putty (main) $ putty localhost
Unable to init server: Could not connect: Connection refused

(putty:8659): Gtk-WARNING **: 11:17:11.050: cannot open display: 
@rifaterdemsahin ➜ /workspaces/Putty (main) $ 

To connect to GitHub Codespaces using PuTTY, follow these steps:

1. **Install PuTTY**: If you haven't already, download and install PuTTY from [the official website](https://www.putty.org/).

2. **Get the SSH Details**:
    - Open your Codespace.
    - Click on the `...` menu in the top-right corner.
    - Select `Ports` and note the SSH command provided.

3. **Configure PuTTY**:
    - Open PuTTY.
    - In the `Host Name (or IP address)` field, enter the hostname from the SSH command (usually something like `codespaces-<id>.github.dev`).
    - In the `Port` field, enter `22`.
    - In the `Connection` category, expand `SSH` and select `Auth`.
    - Click `Browse` and select your private key file (usually `id_rsa` or `id_ed25519`).

    ```sh
    putty -ssh codespaces-<id>.github.dev -P 22 -i path/to/private/key
   putty -ssh https://wretched-specter-p9wx45q7g437pjx-22.app.github.dev/ -P 22 -i path/to/private/key
    ```

Load balancer issue
@rifaterdemsahin ➜ /workspaces/Putty (main) $  putty -ssh https://wretched-specter-p9wx45q7g437pjx-22.app.github.dev/ -P 22 -i path/to/private/key
Unable to init server: Could not connect: Connection refused

(putty:10192): Gtk-WARNING **: 11:20:50.767: cannot open display: 


4. **Save the Session**:
    - Go back to the `Session` category.
    - In the `Saved Sessions` field, enter a name for your session (e.g., `GitHub Codespace`).
    - Click `Save`.

5. **Connect**:
    - Select your saved session and click `Open`.
    - If prompted, accept the server's host key.
    - You should now be connected to your Codespace via PuTTY.

For more detailed instructions, refer to the [GitHub documentation](https://docs.github.com/en/codespaces/developing-in-codespaces/using-ssh-with-codespaces).