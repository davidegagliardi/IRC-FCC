#Variables
P_PROJECTN=IRC-project

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
openstack server add floating ip IRC-Leaf-1   172.24.4.1
openstack server add floating ip IRC-Hub-1    172.24.4.200
openstack server add floating ip IRC-Hub-2    172.24.4.201
openstack server add floating ip WebServer    172.24.4.220
openstack server add floating ip ClientOper   172.24.4.230

#Leaf configuration (create link config for both hubs)
#Hub1 configuration (create link config to hub2)
#Hub2 configuration (create link config to hub1)
#Webserver configuration (set hubs's IP address inside /home/ubuntu/sync/sync.sh)
