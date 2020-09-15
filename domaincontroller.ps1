& winrm set winrm/config/service/auth '@{Basic="true"}'
& winrm set winrm/config/client '@{TrustedHosts="*"}'
& winrm set winrm/config/service '@{AllowUnencrypted="true"}'
& winrm set winrm/config/client/auth '@{Basic="true"}'
& netsh advfirewall set allprofiles state off
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'
& ssh-keygen