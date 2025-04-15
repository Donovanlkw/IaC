#Update your system
sudo apt update && sudo apt upgrade -y


sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ansible --version

sudo nano /etc/ansible/hosts
# # # # # # # # # # # # # # # # # # # # # # 

[webservers]
192.168.1.10
192.168.1.11

[dbservers]
db1.mydomain.com
# # # # # # # # # # # # # # # # # # # # # # 

# This is an inline comment
ansible all -m ping -i /path/to/your/inventory
ansible all -a "uptime" -i /path/to/inventory
