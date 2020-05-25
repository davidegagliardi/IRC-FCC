#Variables
P_PROJECTN=IRC-project

#Hub1 Instance Creation
openstack server create --flavor mini.ubuntu  --image bionic-server-cloudimg-amd64 --network subnetIRCHub1    --key-name cloudkey --security-group IRCGroup IRC-Hub-1

#Hub2 Instance Creation
openstack server create --flavor mini.ubuntu  --image bionic-server-cloudimg-amd64 --network subnetIRCHub2    --key-name cloudkey --security-group IRCGroup IRC-Hub-2

#Leave1 Instance Creation
openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --network subnetIRCLeaves  --key-name cloudkey --security-group IRCGroup IRC-Server-1
