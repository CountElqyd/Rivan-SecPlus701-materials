Identity
Authenticate
Authorize 
Audit

# Azure AD Configuration

## Post Install
- powershell
1. turn off firewall
Set-NetFirewallProfile -name public,private,domain -Enabled False

2. giveIPaddress: 
ncpa.cpl

3. ChangeName
Rename-Computer entraid