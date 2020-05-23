P_USERNAME=IRC-user
P_PASSWORD=IRC
P_PROJECTN=IRC-project

# Project creation and user creation
openstack project create --description "This is IRC Project" "${P_PROJECTN}"
openstack user create --password "${P_PASSWORD}" "${P_USERNAME}"
openstack role add --project "${P_PROJECTN}" --user "${P_USERNAME}" "member"

#Get Ubuntu image and create the image
wget -P /var/tmp -c https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
openstack image create --disk-format qcow --container-format bare --public --file /var/tmp/bionic-server-cloudimg-amd64.img bionic-server-cloudimg-amd64

#Create flavor
openstack flavor create --ram 512 --disk 5  --ephemeral 5 --vcpus 1 --public micro.ubuntu
openstack flavor create --ram 1024 --disk 5  --ephemeral 5 --vcpus 1 --public mini.ubuntu

#Network
openstack network create netIRC
openstack network create netWeb
openstack subnet create --network netIRC --subnet-range 10.11.12.0/24 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRC
openstack subnet create --network netWeb --subnet-range 10.11.11.0/24 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetWeb
openstack router create routerIntra
openstack router create routerExtra
openstack router add subnet routerIntra subnetIRC subnetWeb
openstack router add subnet routerExtra subnetIRC subnetWeb public

#Security groups
openstack security group create IRCGroup --project $P_PROJECTN
openstack security group create WebGroup --project $P_PROJECTN

openstack security group rule create IRCGroup --protocol tcp --dst-port 6667:6667 7000:7000 --remote-ip 0.0.0.0/0
openstack security group rule create WebGroup --protocol tcp --dst-port 80:80 --remote-ip 0.0.0.0/0

#Allow only webserver to wget the file from IRC Server
openstack security group rule create IRCGroup --protocol tcp --dst-port 80:80 --remote-group WebGroup



#Create server
openstack server create --flavor mini.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --user-data irc1.txt --security-group default IRC-Server-1
openstack server create --flavor mini.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --user-data irc2.txt --security-group default IRC-Server-2
openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --network netWeb --user-data web.txt --security-group default WebServer
openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --network netIRC --user-data operator.txt --security-group default Operator
