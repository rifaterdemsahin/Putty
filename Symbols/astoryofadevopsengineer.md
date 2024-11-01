# A Story of a DevOps Engineer Moving Files with PuTTY Automation

Once upon a time, in the bustling world of IT, there was a skilled DevOps engineer named Alex. Alex was responsible for maintaining the infrastructure and ensuring smooth deployments for a large enterprise. One of the recurring tasks was moving files between servers, which was time-consuming and prone to human error.

To streamline this process, Alex decided to automate file transfers using PuTTY, a popular SSH and telnet client. Here's how Alex achieved this:

## Setting Up PuTTY for Automation

First, Alex installed PuTTY and its command-line counterpart, `pscp`, on the local machine. `pscp` is a secure copy utility that uses SSH to transfer files between computers.

## Creating a Script

Alex wrote a simple script to automate the file transfer process. The script used `pscp` to securely copy files from the local machine to the remote server.

```bash
#!/bin/bash

# Define variables
REMOTE_USER="username"
REMOTE_HOST="remote.server.com"
REMOTE_PATH="/path/to/remote/directory"
LOCAL_PATH="/path/to/local/file"

# Transfer file using pscp
pscp -pw "password" $LOCAL_PATH $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH

# Check if the transfer was successful
if [ $? -eq 0 ]; then
    echo "File transfer successful!"
else
    echo "File transfer failed!"
fi
```

## Scheduling the Script

To ensure the file transfer happened regularly, Alex scheduled the script using `cron`, a time-based job scheduler in Unix-like operating systems.

```bash
# Open the crontab file
crontab -e

# Add the following line to schedule the script to run every day at midnight
0 0 * * * /path/to/transfer_script.sh
```

## Monitoring and Logging

To keep track of the file transfers, Alex added logging to the script. This way, any issues could be quickly identified and resolved.

```bash
#!/bin/bash

# Define variables
REMOTE_USER="username"
REMOTE_HOST="remote.server.com"
REMOTE_PATH="/path/to/remote/directory"
LOCAL_PATH="/path/to/local/file"
LOG_FILE="/path/to/logfile.log"

# Transfer file using pscp and log the output
pscp -pw "password" $LOCAL_PATH $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH >> $LOG_FILE 2>&1

# Check if the transfer was successful
if [ $? -eq 0 ]; then
    echo "$(date): File transfer successful!" >> $LOG_FILE
else
    echo "$(date): File transfer failed!" >> $LOG_FILE
fi
```

## Conclusion

With the automation in place, Alex was able to save time and reduce errors in the file transfer process. The enterprise's infrastructure ran more smoothly, and Alex could focus on more strategic tasks, knowing that the file transfers were handled efficiently.

And so, Alex continued to innovate and improve the DevOps processes, making the IT world a better place, one script at a time.

The end.