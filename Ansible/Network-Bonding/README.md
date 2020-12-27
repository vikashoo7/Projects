Task
-----
Configuring the Network Bonding on Public and Private Interface.


Hardware Detail
---------------
OS: RHEL 7, CentOS 7

Pre-requisit
------------
1. Password less connectivity of servers from the Ansible control servers.
2. Already Configureed DNS serves in the Environemnt. If the DNS is not configured then remove the DNS Entery in the "bond.j2" or use private interface command.

How it Works?
-------------
The Play book is designed to configure the bonding interface for both Public and Private interface. 
The Playbook  will ask below 3 things as a user input, bonding name(eg: bond0) and name of the interfaces(eth0,eth1) of remote servers.


How to run?
-----------
1. Create a host file and mention the server name

2. To configure bonding interface for public, use the below command as a root
#ansible-playbook -i hosts bonding.yml

3. To configure bonding interface for Private, use the below command
#ansible-playbook -i  hosts  --extra-vars="type=private IP=192.168.9.2 NMASK=255.255.255.0" bonding.yml

Note: the above IP and Netmask will be changed as per the Environment.

Troubleshooting
---------------
The Playbook will  take the backup of Network script directory based on the time stamp under the root director. Please use the configuration for any trouble setting.

