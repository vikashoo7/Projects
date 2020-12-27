Task
-----
Installing the Python3.x from the tar file

Hardware Detail
---------------
OS: RHEL 7, CentOS 7
Ansible Version: 2.8 

Pre-requisit
------------
1. Password less connectivity of servers from the Ansible control servers.

How it Works?
-------------
1. Create a host file and mention the server name

2. Download the Tar file from the python website "https://www.python.org/downloads/"

3. Run the below command to install the Python3.x

        #ansible-playbook -i hosts --extra-vars="python_path=Python-3.8.7.tgz" python3.yml

where: python_path = path of the python3.x tar file

