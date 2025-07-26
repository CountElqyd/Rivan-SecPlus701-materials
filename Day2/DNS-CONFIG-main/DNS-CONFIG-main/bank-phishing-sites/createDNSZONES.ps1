Install-WindowsFeature  -name dns  -includeManagementTools
Add-DnsServerPrimaryZone -Name "bdo.ph.com" -ZoneFile "bdo.ph.com.dns"
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name ns  -ipv4address 192.168.1.5
add-DnsServerResourceRecord -zonename bdo.ph.com -Cname -name www -hostname ns.bdo.ph.com
add-DnsServerResourceRecord -zonename bdo.ph.com -Cname -name imap -hostname ns.bdo.ph.com
add-DnsServerResourceRecord -zonename bdo.ph.com -Cname -name pop -hostname ns.bdo.ph.com
add-DnsServerResourceRecord -zonename bdo.ph.com -Cname -name smtp -hostname ns.bdo.ph.com
###FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name cb  -ipv4address 10.31.1.4
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name ct  -ipv4address 10.31.1.2
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name cm  -ipv4address 10.31.100.8
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name ed  -ipv4address 10.31.31.1
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name p1  -ipv4address 10.31.100.101
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name p2  -ipv4address 10.31.100.102
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name c1  -ipv4address 10.31.50.6
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name c2  -ipv4address 10.31.50.8
add-DnsServerResourceRecord -zonename bdo.ph.com -A -name ap  -ipv4address 10.31.10.3
