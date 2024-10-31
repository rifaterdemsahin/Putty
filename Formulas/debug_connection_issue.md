There are a few potential reasons why you might be experiencing a connection error despite having the correct configuration:

1. **SSH Service Not Running**: Ensure that the SSH service is running on your instance. You can verify this by connecting to the instance via the AWS console and running `systemctl status sshd`.

2. **Security Group Rules**: Double-check that the security group rules are correctly applied and that there are no other security groups attached to the instance that might be blocking SSH traffic.

3. **Network ACLs**: Ensure that the Network ACLs associated with your subnet are not blocking inbound or outbound traffic on port 22.

4. **Instance Initialization**: Sometimes, the instance might not be fully initialized when you try to connect. Wait a few minutes after the instance is created before attempting to connect.

5. **Public IP Address**: Verify that the public IP address is correctly assigned to the instance and that you are using the correct IP address to connect.

6. **Firewall on the Instance**: Ensure that there are no firewall rules on the instance itself that might be blocking SSH connections.

7. **SSH Configuration**: Make sure the SSH configuration file (`/etc/ssh/sshd_config`) is correctly set up to allow password authentication and that there are no syntax errors.

Here’s a quick checklist to troubleshoot the connection issue:

1. **Check SSH Service**:
   ```bash
   systemctl status sshd
   ```

2. **Verify Security Group**:
   Ensure the security group attached to the instance allows inbound traffic on port 22 from your IP address.

3. **Check Network ACLs**:
   Ensure the subnet's Network ACLs allow inbound and outbound traffic on port 22.

4. **Wait for Initialization**:
   Wait a few minutes after the instance is created before attempting to connect.

5. **Verify Public IP**:
   Ensure you are using the correct public IP address to connect.

6. **Check Firewall Rules**:
   Ensure there are no firewall rules on the instance blocking SSH.

7. **Verify SSH Configuration**:
   Ensure `/etc/ssh/sshd_config` allows password authentication:
   ```bash
   PasswordAuthentication yes
   ```

If you've checked all these and still face issues, please provide any error messages you receive when trying to connect, and we can further diagnose the problem.