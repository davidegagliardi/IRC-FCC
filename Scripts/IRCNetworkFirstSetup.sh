#!/bin/bash
#+----------------------------------------------+
#|              Univerity of Trento             |
#|        Cloud and Network Infrastructure      |
#|                  A.Y. 2019/2020              |
#|         Fog and Cloud Computing Course       |
#|    Authors:                                  |
#|    - Andrea Abriani                          |
#|    - Davide Gagliardi                        |
#+----------------------------------------------+
#Sources
P_PROJECTN=IRC-project
##Variables extraction
IP_HUB1=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.8\.[[:digit:]]*')
IP_HUB2=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.9\.[[:digit:]]*')
IP_LEAF1=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
#Hub1 configuration (create link config to hub2)
ssh -i cloud.key ubuntu@172.24.4.200 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"hub1\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
ssh -i cloud.key ubuntu@172.24.4.200 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<link name=\"hubN.omega.example.org\" ipaddr=\"change\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword2\" recvpass=\"hubpassword1\">/<link name=\"hub2.omega.example.org\" ipaddr=\"$IP_HUB2\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword2\" recvpass=\"hubpassword1\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.200 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub2.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.200 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub2.omega.example.org hub2.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add leaf link to hub1
ssh -i cloud.key ubuntu@172.24.4.200 -o StrictHostKeyChecking="accept-new" -t "sed -i '1i <link name=\"ircserver1.omega.example.org\" ipaddr=\"$IP_LEAF1\" port=\"7000\" allowmask=\"10.11.12.0/24\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#Hub2 configuration (create link config to hub1)
ssh -i cloud.key ubuntu@172.24.4.201 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"hub2\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<link name=\"hubN.omega.example.org\" ipaddr=\"change\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword2\" recvpass=\"hubpassword1\">/<link name=\"hub1.omega.example.org\" ipaddr=\"$IP_HUB1\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword1\" recvpass=\"hubpassword2\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub1.omega.example.org hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add leaf link to hub2
ssh -i cloud.key ubuntu@172.24.4.201 -o StrictHostKeyChecking="accept-new" -t "sed -i '1i <link name=\"ircserver1.omega.example.org\" ipaddr=\"$IP_LEAF1\" port=\"7000\" allowmask=\"10.11.12.0\/24\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
##Leaf configuration (create link config for both hubs)
#change leaf domain name
ssh -i cloud.key ubuntu@172.24.4.150 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver1\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
#add hub1 link to leaf
ssh -i cloud.key ubuntu@172.24.4.150 -o StrictHostKeyChecking="accept-new" -t "sed -i '1i <link name=\"hub1.omega.example.org\" ipaddr=\"$IP_HUB1\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password1\" recvpass=\"password2\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add hub2 link to leaf
ssh -i cloud.key ubuntu@172.24.4.150 -o StrictHostKeyChecking="accept-new" -t "sed -i '1i <link name=\"hub2.omega.example.org\" ipaddr=\"$IP_HUB2\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password1\" recvpass=\"password2\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add autoconnect to hub1
ssh -i cloud.key ubuntu@172.24.4.150 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add failover to hub2
ssh -i cloud.key ubuntu@172.24.4.150 -o StrictHostKeyChecking="accept-new" -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub2.omega.example.org hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
##Start Hub 1
ssh -i cloud.key ubuntu@172.24.4.200 -o StrictHostKeyChecking="accept-new" -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "
##Start Hub 2
ssh -i cloud.key ubuntu@172.24.4.201 -o StrictHostKeyChecking="accept-new" -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "
##Start Leaf
ssh -i cloud.key ubuntu@172.24.4.150 -o StrictHostKeyChecking="accept-new" -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "
##Webserver configuration (set hubs's IP address inside /home/ubuntu/sync/syn
ssh -i cloud.key ubuntu@172.24.4.220 -o StrictHostKeyChecking="accept-new" -t "sed -i '0,/10.11.12.8.[[:digit:]]*/s//$IP_HUB1/' /home/ubuntu/sync/sync.sh"
ssh -i cloud.key ubuntu@172.24.4.220 -o StrictHostKeyChecking="accept-new" -t "sed -i '0,/10.11.12.9.[[:digit:]]*/s//$IP_HUB2/' /home/ubuntu/sync/sync.sh"
