Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
winrm quickconfig -transport:https

winrm enumerate winrm/config/Listener
winrm get winrm/config/Service
winrm get winrm/config/Winrs

winrs -r:http://192.168.1.123:5985/wsman -u:administrator -p:Password1 ipconfig
winrs -r:https://192.168.1.123:5985/wsman -u:administrator -p:Password1 ipconfig
