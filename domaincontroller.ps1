& winrm set winrm/config/service/auth '@{Basic="true"}'
& winrm set winrm/config/client '@{TrustedHosts="*"}'
& winrm set winrm/config/service '@{AllowUnencrypted="true"}'
& winrm set winrm/config/client/auth '@{Basic="true"}'
& netsh advfirewall set allprofiles state off