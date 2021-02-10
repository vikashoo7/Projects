Task
------
    This script will manage the local sudo access 

Hardware Detail
-------
    OS: RHEL 7, CentOS 7
    Language: Shell Script

Pre-requisit
------
    1. Jump/control server.
    2. Password less connectivity of servers from the control/jump server

How it Works?
-------
    1. Based on the input present in the "info" file, the access of the user revoked automatically based on the number of days.
    2. The script should be configured in the crontab. So that it will run every day at least onece. gor example
          #crontab -e
              30 22 * * * /root/revoke.sh


How to run?
------
       1. file explanation
            info - we need to update the "info" as per the available formate.
            support.sh - This is the supporting file and primarily it will revoke the user access
            revoke.sh - This is main file.

       2. Run the below command to revoke the user access
        #chmod o+x revoke.sh
        #sh /root/revoke.sh 

Troubleshooting
------
     1. The script will take the copy of sudoers file uder "/sudo" directory.
     2. The scrpt will genetate the log file uder the w"/root/log"

