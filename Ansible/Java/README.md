Task
-----
Installing the Java from the tar file

Hardware Detail
--------
OS: RHEL 7, CentOS 7 

Ansible Version: 2.8

Pre-requisit
-------
  Password less connectivity of servers from the Ansible control servers.

How it Works?
---------
  1. Create a host file and mention the server name

  2. Download the Tar file from the python website "https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html"

  3. Run the below command to install the Java

      #ansible-playbook -i hosts --extra-vars="user=<my-user> java_tar_file_location=/path/to/java/tar/file" java.yml
