$P_USERNAME=IRC-user
$P_PASSWORD=IRC
$P_PROJECTN=IRC-project

# Project creation and user creation
openstack project create --description "This is IRC Project" "${P_PROJECTN}"
openstack user create --password "${P_PASSWORD}" "${P_USERNAME}"
openstack role add --project "${P_PROJECTN}" --user "${P_USERNAME}" "member"

#Get Ubuntu image and create the image
#wget -P /var/tmp -c https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
wget -P /var/tmp -c https://cloud-images.ubuntu.com/minimal/releases/bionic/release/ubuntu-18.04-minimal-cloudimg-amd64.img
#openstack image create --disk-format qcow2 --container-format bare --public --file /var/tmp/bionic-server-cloudimg-amd64.img bionic-server-cloudimg-amd64
openstack image create --disk-format qcow2 --container-format bare --public --file /var/tmp/ubuntu-18.04-minimal-cloudimg-amd64.img ubuntu-18.04-minimal-cloudimg-amd64

#Create flavor
openstack flavor create --ram 512 --disk 5  --ephemeral 5 --vcpus 1 --public micro.ubuntu --project $P_PROJECTN
openstack flavor create --ram 1024 --disk 5  --ephemeral 5 --vcpus 1 --public mini.ubuntu --project $P_PROJECTN

#Network
openstack network create netIRCHub11 --project $P_PROJECTN
openstack network create netIRCHub2 --project $P_PROJECTN
openstack network create netIRCLeaves --project $P_PROJECTN
openstack network create netWeb --project $P_PROJECTN
openstack network create netOper --project $P_PROJECTN

openstack subnet create --network netIRCHub1 --gateway 10.11.8.1 --subnet-range 10.11.3.0/30 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCHub11 --project $P_PROJECTN
openstack subnet create --network netIRCHub2 --gateway 10.11.9.1 --subnet-range 10.11.9.0/30 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCHub2 --project $P_PROJECTN
openstack subnet create --network netOper --gateway 10.11.10.1 --subnet-range 10.11.10.0/28 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetOper --project $P_PROJECTN
openstack subnet create --network netWeb --gateway 10.11.11.1 --subnet-range 10.11.11.0/29 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetWeb --project $P_PROJECTN
openstack subnet create --network netIRCLeaves --gateway 10.11.12.1 --subnet-range 10.11.12.0/25 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCLeaves --project $P_PROJECTN

#openstack port create --network netIRCHubs --allowed-address ip-address=10.11.8.2 --fixed-ip subnet=subnetIRCHub1,ip-address=10.11.8.2 IRCHub1Port
#openstack port create --network netIRCHubs --fixed-ip subnet=subnetIRCHub2,ip-address=10.11.9.2 IRCHub2Port



#openstack router create routerExtra --project $P_PROJECTN

#openstack router create routerHub1 --project $P_PROJECTN
#openstack router create routerHub2 --project $P_PROJECTN
#openstack router add subnet routerHub1 subnetIRCLeaves subnetIRCHub1 subnetIRCHub2 subnetWeb subnetOper
#openstack router add subnet routerHub2 subnetIRCLeaves subnetIRCHub1 subnetIRCHub2 subnetWeb subnetOper

openstack router create RouterIRCHub1 --project $P_PROJECTN
openstack router create RouterIRCHub2 --project $P_PROJECTN
openstack router create RouterIRCLeaves --project $P_PROJECTN
openstack router create RouterWeb --project $P_PROJECTN
openstack router create RouterOper --project $P_PROJECTN

openstack router create MascalzoneLatino --project $P_PROJECTN
openstack router add subnet MascalzoneLatino subnetIRCHub1
openstack router add subnet MascalzoneLatino subnetIRCHub2
openstack router add subnet MascalzoneLatino subnetIRCLeaves
openstack router add subnet MascalzoneLatino subnetWeb
openstack router add subnet MascalzoneLatino subnetOper
openstack router set --external-gateway public MascalzoneLatino


openstack router add subnet RouterIRCHub1 subnetIRCHub1
openstack router add subnet RouterIRCHub2 subnetIRCHub2
openstack router add subnet RouterIRCLeaves subnetIRCLeaves
openstack router add subnet RouterWeb subnetWeb
openstack router add subnet RouterOper subnetOper


openstack router set --external-gateway public RouterIRCHub1
openstack router set --external-gateway public RouterIRCHub2
openstack router set --external-gateway public RouterIRCLeaves
openstack router set --external-gateway public RouterWeb
openstack router set --external-gateway public RouterOper

#openstack router set routerExtra --fixed-ip 10.11.12.2 subnet
#openstack router set --fixed-ip subnet=subnetIRCLeaves, --ip-address=10.11.12.2 routerExtra
openstack router add subnet routerExtra subnetIRCHub1
openstack router add subnet routerExtra subnetIRCHub2
openstack router add subnet routerExtra subnetIRCLeaves
openstack router add subnet routerExtra subnetWeb
openstack router add subnet routerExtra public

#Security groups
openstack security group create IRCGroup --project $P_PROJECTN
openstack security group create WebGroup --project $P_PROJECTN

openstack security group rule create IRCGroup --protocol tcp --dst-port 7000:7000 --remote-ip 10.11.0.0/16
openstack security group rule create IRCGroup --protocol tcp --dst-port 6667:6667 --remote-ip 0.0.0.0/0
openstack security group rule create WebGroup --protocol tcp --dst-port 80:80 --remote-ip 0.0.0.0/0

#Allow only webserver to wget the file from IRC Server
openstack security group rule create IRCGroup --protocol tcp --dst-port 80:80 --remote-group WebGroup

openstack server create --flavor mini.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --nic v4-fixed-ip=10.11.12.7 --security-group default IRC-Server-1

#Floating IPs
openstack floating ip create --floating-ip-address 172.24.4.82 --project $P_PROJECTN public
openstack floating ip create --floating-ip-address 172.24.4.92 --project $P_PROJECTN public
openstack server add floating ip --fixed-ip-address 10.11.8.2 Hub1 172.24.4.82
openstack server add floating ip --fixed-ip-address 10.11.9.2 Hub2 172.24.4.92

#Create server
#openstack server create --flavor mini.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --user-data irc1.txt --security-group default IRC-Server-1
#openstack server create --flavor mini.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --user-data irc2.txt --security-group default IRC-Server-2
#openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --network netWeb --user-data web.txt --security-group default WebServer
#openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --user-data operator.txt --security-group default Operator



#WebServer
openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --key-name cloudkey --network netWeb WebServer
openstack floating ip create --floating-ip-address 172.24.4.200 --project $P_PROJECTN public
#Obtain IP
openstack server add floating ip --fixed-ip-address 10.11.8.2 Hub1 172.24.4.200
