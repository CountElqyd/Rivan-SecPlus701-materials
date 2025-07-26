Install-WindowsFeature  -name Web-Server  -includeManagementTools
New-Website -name "bdo.ph.com" -hostheader "www.bdo.ph.com" -physicalpath "C:\bank-phishing-sites\bdo"