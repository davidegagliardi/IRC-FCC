#Variables
P_PROJECTN=IRC-project

#Hub1 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRCHub-Server          --network subnetIRCHub1    --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING IRC-Hub-1

#Hub2 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRCHub-Server          --network subnetIRCHub2    --key-name cloudkey   --security-group IRCClient --security-group SSH --security-group PING IRC-Hub-2

#Leaf1 Instance Creation
openstack server create --flavor micro.ubuntu --image IRCHub-Server          --network subnetIRCLeaves  --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING IRC-Leaf-1

#WebServer Instance Creation
openstack server create --flavor micro.ubuntu --image INSERIREIMMAGINELEAVES --network subnetWeb        --key-name cloudkey   --security-group WebGroup  --security-group SSH --security-group PING WebServer

#ClientOper Instance Creation
openstack server create --flavor micro.ubuntu --image PLACEHOLDER            --network subnetOper       --key-name cloudkey   --security-group IRCClient --security-group SSH --security-group PING ClientOper

#Floating IPs association
openstack server add floating ip IRC-Leaf-1   172.24.4.1
openstack server add floating ip IRC-Hub-1    172.24.4.200
openstack server add floating ip IRC-Hub-2    172.24.4.201
openstack server add floating ip WebServer    172.24.4.220
openstack server add floating ip ClientOper   172.24.4.230
