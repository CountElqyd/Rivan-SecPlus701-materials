conf t
int gi 1
no shut
ip add 10.41.1.5 255.255.255.0 
aaa new-model
aaa authentication login default group RADGROUP local
aaa authorization exec default group RADGROUP local
radius server WINDOWSRADIUS
 address ipv4 10.41.1.8 auth-port 1813
 key keykeymo
aaa group radius RADGROUP
 server 10.41.1.8
line vty 0 4
 transport input all
 login authentication default
end