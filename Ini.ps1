Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
winrm quickconfig -transport:https

winrm enumerate winrm/config/Listener
winrm get winrm/config/Service
winrm get winrm/config/Winrs

winrs -r:http://192.168.1.123:5985/wsman -u:administrator -p:Password1 ipconfig
winrs -r:https://192.168.1.123:5985/wsman -u:administrator -p:Password1 ipconfig



https://learn.microsoft.com/en-us/troubleshoot/windows-client/system-management-components/configure-winrm-for-https


Hosts in Linux

ansible_user: user@DOMAIN.COM
ansible_password: password
ansible_connection: winrm
ansible_ssh_port: 5986
ansible_winrm_transport: ntlm
ansible_winrm_server_cert_validation: ignore


#https://docs.ansible.com/ansible/latest/collections/community/windows/index.html



