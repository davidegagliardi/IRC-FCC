#Variables
P_PROJECTN=IRC-project

#Hub1 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRCHub-Server          --network subnetIRCHub1    --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING IRC-Hub-1

#Hub2 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRCHub-Server          --network subnetIRCHub2    --key-name cloudkey   --security-group IRCClient --security-group SSH --security-group PING IRC-Hub-2

#Leave1 Instance Creation
openstack server create --flavor micro.ubuntu --image INSERIREIMMAGINELEAVES --network subnetIRCLeaves  --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING IRC-Leave-1
