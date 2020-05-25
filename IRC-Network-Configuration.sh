#Variables
P_PROJECTN=IRC-project


#Network
openstack network create netIRCHub1 --project $P_PROJECTN
openstack network create netIRCHub2 --project $P_PROJECTN
openstack network create netIRCLeaves --project $P_PROJECTN
openstack network create netWeb --project $P_PROJECTN
openstack network create netOper --project $P_PROJECTN

#Subnets
openstack subnet create --network netIRCHub1    --gateway 10.11.8.1   --subnet-range 10.11.3.0/24   --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCHub1   --project $P_PROJECTN
openstack subnet create --network netIRCHub2    --gateway 10.11.9.1   --subnet-range 10.11.9.0/24   --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCHub2   --project $P_PROJECTN
openstack subnet create --network netOper       --gateway 10.11.10.1  --subnet-range 10.11.10.0/24  --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetOper      --project $P_PROJECTN
openstack subnet create --network netWeb        --gateway 10.11.11.1  --subnet-range 10.11.11.0/24  --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetWeb       --project $P_PROJECTN
openstack subnet create --network netIRCLeaves  --gateway 10.11.12.1  --subnet-range 10.11.12.0/24  --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCLeaves --project $P_PROJECTN

#Router creation and connection
openstack router create VRout --project $P_PROJECTN
openstack router add subnet VRout subnetIRCHub1
openstack router add subnet VRout subnetIRCHub2
openstack router add subnet VRout subnetIRCLeaves
openstack router add subnet VRout subnetWeb
openstack router add subnet VRout subnetOper

#External connection to public network
openstack router set --external-gateway public VRout

#Security group
openstack security group create IRCGroup --project $P_PROJECTN
openstack security group create WebGroup --project $P_PROJECTN

openstack security group rule create IRCGroup --protocol tcp --dst-port 7000:7000 --remote-ip 10.11.0.0/16
openstack security group rule create IRCGroup --protocol tcp --dst-port 6667:6667 --remote-ip 0.0.0.0/0
openstack security group rule create WebGroup --protocol tcp --dst-port 80:80     --remote-ip 0.0.0.0/0
