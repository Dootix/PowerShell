
# Simple PowerShell script that uses DNSdumpster, whois and nslookup against a given domain to gather basic info.

$domain = Read-Host -Prompt 'Domain to scan: '

Resolve-DnsName $domain

Start-Process "https://dnsdumpster.com" 
Start-Sleep -Seconds 1

[Microsoft.VisualBasic.Interaction]::AppActivate("Brave")
[System.Windows.Forms.SendKeys]::SendWait("$domain{ENTER}")

Start-Process "https://whois.domaintools.com/"
Start-Sleep -Seconds 1

[Microsoft.VisualBasic.Interaction]::AppActivate("Brave")
[System.Windows.Forms.SendKeys]::SendWait("$domain{ENTER}")
