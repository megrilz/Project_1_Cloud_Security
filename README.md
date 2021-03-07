# Project_1_Cloud_Security
 Cloud Security: Linux, Ansible, and Diagrams
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
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

**Note**: The following image link needs to be updated. Replace `docker_ps_output.png` with the name of your screenshot image file.  
<img width="947" alt="docker ps output" src="https://user-images.githubusercontent.com/73347552/110228099-75d12100-7ecc-11eb-8d04-20fa37486ff8.PNG">


![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker ps output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
- File beat: 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- http://[your.VM.IP]:5601/app/kibana Navigate to this URL to check your ELK server is running. 

Commands the user will need to run to download the playbook, update the files:
- To update the playbook run this command 
- To update the file run this command 
