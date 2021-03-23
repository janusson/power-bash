# get OpenSSH up and running on a windows pc
# source: https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse#installing-openssh-from-the-settings-ui-on-windows-server-2019-or-windows-10-1809

# Install OpenSSH (needs admin)
Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
'''
This should return the following output:
Name  : OpenSSH.Client~~~~0.0.1.0
State : NotPresent
Name  : OpenSSH.Server~~~~0.0.1.0
State : NotPresent
'''

# Install the OpenSSH Client
# Install the OpenSSH Server
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
'''
Both of these should return the following output:
Path          :
Online        : True
RestartNeeded : False
'''

# initial configuration of SSH server

# To manually enable ssh on windows:
Start-Service sshd
# Confirm the Firewall rule is configured. 
# Should be created automatically by setup.
Get-NetFirewallRule -Name *ssh*
# Firewall rule named "OpenSSH-Server-In-TCP" should be enabled
# If the firewall does not exist, create one
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22

# OPTIONAL but recommended:
# to start ssh automatically:
Set-Service -Name sshd -StartupType 'Automatic'

# finally, when ready to connect:

'''
ssh <<username@servername-or-ip>>
'''
