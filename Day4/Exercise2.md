![enter image description here](https://github.com/CountElqyd/S2S-VPN/blob/main/Exercises/S2S-Exercise.png?raw=true)
# SITE-PH
Tunnel IP: 172.16.12.1
Subnet: 255.255.255.240
Source Int: Gig2
Remote Peer IP: 200.0.0.30
Pre-shared Key: aaaaaaaa
RemoteSubnets: 10.100.11.4/30

10.100.11.6/30
10.200.22.22/29
# SITE-JP
Tunnel IP: 172.16.12.14
Subnet: 255.255.255.240
Source Int: Gig1
Remote Peer IP: 200.0.0.2
Pre-shared Key: aaaaaaaa
RemoteSubnets: 10.100.11.4/30






### Remote Subnet Exp
## ✅ 1. IP: **10.100.11.6/30**

### Step 1: Understand what /30 means

-   /30 = 30 bits for the network, 2 bits for hosts.
    
-   2^2 = **4 IP addresses total** in this subnet.

    -   1 = **Network**
    -   2 = **Usable hosts*
    -   1 = **Broadcast**
        

### Step 2: Subnet size
-   With /30, the **block size** is **4 IPs per subnet**.    
### Step 3: Finger method (counting by 4)
Let’s find which subnet **10.100.11.6** falls into:
Start from the base:
-   10.100.11.0 → 0, 1, 2, 3    
-   10.100.11.4 → 4, 5, 6, 7 ✅ ← This one contains .6    
-   10.100.11.8 → 8, 9, 10, 11   
So:
-   **Network**: **10.100.11.4/30**  
-   **Usable IPs**: 10.100.11.5 and 10.100.11.6  
-   **Broadcast**: 10.100.11.7
    
👉 **Remote subnet = 10.100.11.4/30**
----------
## ✅ 2. IP: **10.200.22.22/29**

### Step 1: Understand what /29 means

-   /29 = 29 bits for the network, 3 bits for hosts.    
-   2^3 = **8 IP addresses total**  
    -   1 = **Network**
    -   6 = **Usable hosts**        
    -   1 = **Broadcast**
        
### Step 2: Subnet size
-   With /29, the block size is **8 IPs per subnet**.   

### Step 3: Finger method (counting by 8)
Check where **10.200.22.22** falls:
-   10.200.22.16 → 16–23 ✅ ← This contains .22    
-   10.200.22.24 → 24–31   
So:
-   **Network**: **10.200.22.16/29**  
-   **Usable IPs**: 10.200.22.17–22 
-   **Broadcast**: 10.200.22.23  
👉 **Remote subnet = 10.200.22.16/29**

