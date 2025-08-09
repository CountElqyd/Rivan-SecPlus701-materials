CIA 
Protect your Switch


# level1: 
local AAA - authentication, authorization aaccounting

cisco:
```
who
```


accounting
config t
    username admin privilege 15 secret pass
    username cisco privilege 15 secret pass
    username rob privilege 15 secret pass
    line vty 0 14
    transport input all
    login local
end


# level 2: encryption
use public/private key pair security for encrypted data trafic

## part 1 - create keys
conf t
 ip domain-lookup
 ip domain name rivansecplus.com
!! generate a public/private key pair
crypto key generate rsa

# level3 
2fa


# level4
passkey


### VERIFY FILE INTEGRITY

certutil -hashfile 'filename' md5

e7908933449613edc97e1b11180429d1