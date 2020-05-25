#Variables
$P_PROJECTN=IRC-project

#Hub1 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRCHub-Server   --network netIRCHub1    --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING IRC-Hub-1
#Hub2 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRCHub-Server   --network netIRCHub2    --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING --wait IRC-Hub-2
#Leaf1 Instance Creation
openstack server create --flavor micro.ubuntu --image IRCHub-Server   --network netIRCLeaves  --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING IRC-Leaf-1
#WebServer Instance Creation
openstack server create --flavor micro.ubuntu --image WebServer       --network netWeb        --key-name cloudkey   --security-group WebGroup  --security-group SSH --security-group PING WebServer
#ClientOper Instance Creation
openstack server create --flavor micro.ubuntu --image IRC-Client      --network netOper       --key-name cloudkey   --security-group IRCClient --security-group SSH --security-group PING --wait ClientOper

#Floating IPs association
openstack server add floating ip IRC-Leaf-1   172.24.4.150
openstack server add floating ip IRC-Hub-1    172.24.4.200
openstack server add floating ip IRC-Hub-2    172.24.4.201
openstack server add floating ip WebServer    172.24.4.220
openstack server add floating ip ClientOper   172.24.4.230

#Hub1 configuration (create link config to hub2)
ssh -i cloud.key ubuntu@172.24.4.200 -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"hub1\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
ssh -i cloud.key ubuntu@172.24.4.200 -t "sed -i 's/<link name=\"hubN.omega.example.org\" ipaddr=\"change\" port=\"7000\" allowmask=\"10.11.0.0/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword2\" recvpass=\"hubpassword1\">/<link name=\"hub2.omega.example.org\" ipaddr=\"$IP_HUB2\" port=\"7000\" allowmask=\"10.11.0.0/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword2\" recvpass=\"hubpassword1\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.200 -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub2.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.200 -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub2.omega.example.org hub2.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add leaf link to hub1
ssh -i cloud.key ubuntu@172.24.4.200 -t "sed -i '1i <link name=\"ircserver1.omega.example.org\" ipaddr=\"$IP_LEAF1\" port=\"7000\" allowmask=\"10.11.12.0/24\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"



#Hub2 configuration (create link config to hub1)
ssh -i cloud.key ubuntu@172.24.4.201 -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"hub2\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -t "sed -i 's/<link name=\"hubN.omega.example.org\" ipaddr=\"change\" port=\"7000\" allowmask=\"10.11.0.0/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword2\" recvpass=\"hubpassword1\">/<link name=\"hub1.omega.example.org\" ipaddr=\"$IP_HUB1\" port=\"7000\" allowmask=\"10.11.0.0/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"hubpassword1\" recvpass=\"hubpassword2\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub1.omega.example.org hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add leaf link to hub2
ssh -i cloud.key ubuntu@172.24.4.201 -t "sed -i '1i <link name=\"ircserver1.omega.example.org\" ipaddr=\"$IP_LEAF1\" port=\"7000\" allowmask=\"10.11.12.0/24\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"


##Leaf configuration (create link config for both hubs)
#change leaf domain name
ssh -i cloud.key ubuntu@172.24.4.150 -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver1\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
#add hub1 link to leaf
ssh -i cloud.key ubuntu@172.24.4.150 -t "sed -i '1i <link name=\"hub1.omega.example.org\" ipaddr=\"$IP_HUB1\" port=\"7000\" allowmask=\"10.11.0.0/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password1\" recvpass=\"password2\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add hub2 link to leaf
ssh -i cloud.key ubuntu@172.24.4.150 -t "sed -i '1i <link name=\"hub2.omega.example.org\" ipaddr=\"$IP_HUB2\" port=\"7000\" allowmask=\"10.11.0.0/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password1\" recvpass=\"password2\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"

#add autoconnect to hub1
ssh -i cloud.key ubuntu@172.24.4.150 -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add failover to hub2
ssh -i cloud.key ubuntu@172.24.4.150 -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub2.omega.example.org hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"

##Start Hub 1
ssh -i cloud.key ubuntu@172.24.4.200 -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "
##Start Hub 2
ssh -i cloud.key ubuntu@172.24.4.201 -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "
##Start Leaf
ssh -i cloud.key ubuntu@172.24.4.150 -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "


##Webserver configuration (set hubs's IP address inside /home/ubuntu/sync/sync.sh)
