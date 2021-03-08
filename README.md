# Project_1_Cloud_Security
 Cloud Security: Linux, Ansible, and Diagrams
 
 ## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

**Note**: The following image link needs to be updated. Replace `diagram_filename.png` with the name of your diagram image file.  

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly secure, in addition to restricting access to the network.
- _TODO: What aspect of security do load balancers protect?
- What is the advantage of a jump box?_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
 
- Filebeat watches for and monitors the log files or locations that you specify, collects log events, and forwards them to Elasticsearch for indexing. Filebeat collects data about the file system.
- Metricbeat helps you monitor your servers by recording the metrics from the system and services running on the server. Metricbeat collects machine metrics, such
as uptime.


The configuration details of each machine may be found below.
(http://www.tablesgenerator.com/markdown_tables)

| Name         | Function | Private IP address | Operating System |
|--------------|----------|--------------------|------------------|
| Jump Box     | Gateway  | 10.0.0.4           | Linux            |
| Web Server 1 | Host     | 10.0.0.7           | Linux            |
| Web Server 2 | Host     | 10.0.0.8           | Linux            |
| Web Server 3 | Host     | 10.0.0.9           | Linux            |
| ELK Server   | Logs     | 10.2.0.4           | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 68.82.27.158

Machines within the network can only be accessed by SSH.
- Only the Jump Box machine is allowed to access to the ELK Server VM. The Jump Box's Public IP address is 137.135.117.87.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |    172.    17.0.1              |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The primary benefit of Ansible is it allows IT administrators to automate away the drudgery from their daily tasks. That frees them to focus on efforts that help deliver more value to the business by spending time on more important tasks. 

The playbook implements the following tasks:
- The steps of the elk installation playbook were to configure the allowed IPs of the webservers and ELK server in the hosts file that Ansible can connect to.
- Now we need a playbook to to configure it to download and launch a docker elk container, install docker.io and python3-pip, and then enable service docker on boot.
- We configured the playbook with the sysctl module so that all these settings automatically run even if the VM has been restarted.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

<img width="947" alt="docker ps output" src="https://user-images.githubusercontent.com/73347552/110228099-75d12100-7ecc-11eb-8d04-20fa37486ff8.PNG">



### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat: is often used to collect log files from very specific files, and can be tailored to be searched by operating system, timestamp, location and much more. Great for auditing the logs and searching to track logon data. 
- Metricbeat: collects machine metrics, such as uptime, CPU usage, inbound and outbound traffic. These metrics allow us to monitor the network to detect any bad actors. 


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Filebeat configuration file from your Ansible container file to your WebVM's where you just installed Filebeat /etc/filebeat/filebeat.yml.
- Update the filebeat-playbook.yml file to include filebeat modules enable system, filebeat setup, and service filebeat start.
- Run the playbook, and navigate to /etc/ansible/ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- The filebeat-playbook.yml is the playbook. Then copy the Filebeat configuration file from your Ansible container to your WebVM's where you just installed Filebeat.
- You update the host configuration file, called filebeat-config.yml with the VM IP, to make Ansible run the playbook on a specific machine. 
- This list is Ansible's inventory and is stored in the hosts text file /etc/ansible/hosts. Creat groups [webservers] and [elk]. When you run playbooks with Ansible, you specify which group to run them on. This allows you to run certain playbooks on some machines, but not on others
- http://[your.VM.IP]:5601/app/kibana Navigate to this URL to check your ELK server is running. 

Commands the user will need to run to download the playbook, update the files:
- To update the playbook run this command ansible-playbook filebeat-playbook.yml
- To update the file run this command 
