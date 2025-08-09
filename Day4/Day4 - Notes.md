Day 4
Commands
# Disable Firewall
set-NetFirewallProfile -name private,public,domain -Enabled False
get-NetFirewallProfile


rename-computer asfasfa

Restart-Computer



# Subnetting
route print
ip route
L - local
C- connected

![enter image description here](https://learningnetwork.cisco.com/sfc/servlet.shepherd/version/renditionDownload?rendition=THUMB720BY480&versionId=0683i000001rj8o&operationContext=CHATTER&contentId=05T3i00000ACA7x&page=0)



# VPN Setup

IKE Phase1
- Diffy Hellman Key (DHKey) - for IKE SA Tunnel
IKE  Security Association Tunnel
IKE - Internet Key Exchange

IPSec Key





```powersell
Get-TlsCipherSuite
- encryption algos supported by device.
```
### Encryption
AES-256
cisco next gen crypto
https://sec.cloudapps.cisco.com/security/center/resources/next_generation_cryptography

AES-CBC mode _ Chain Block Cipher  >> Encryption


AES-GCM mode - Galois Control Mode  >> 
Authenticated encryption

### Integrity
SHA-512 
 message digest

### DH Group
https://www.watchguard.com/help/docs/help-center/en-us/Content/en-US/Fireware/bovpn/manual/diffie_hellman_c.html

-- minimum 14 MODP

