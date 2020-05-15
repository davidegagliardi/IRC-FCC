P_USERNAME=IRC-user
P_PASSWORD=IRC
P_PROJECTN=IRC-project

# Project creation and user creation
openstack project create --description "This is IRC Project" "${P_PROJECTN}"
openstack user create --password "${P_PASSWORD}" "${P_USERNAME}"
openstack role add --project "${P_PROJECTN}" --user "${P_USERNAME}" "member"

echo "#cloud-config
password: fogcloud
chpasswd: { expire: False }
ssh_pwauth: True" > userdata.txt

#Get Ubuntu image and create the image
wget -P /var/tmp -c https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
openstack image create --disk-format qcow --container-format bare --public --file /var/tmp/bionic-server-cloudimg-amd64.img bionic-server-cloudimg-amd64

#Create flavor
openstack flavor create --ram 512 --disk 5  --ephemeral 5 --vcpus 1 --public micro.ubuntu
openstack flavor create --ram 1024 --disk 5  --ephemeral 5 --vcpus 1 --public mini.ubuntu

#Network
openstack network create net1
openstack subnet create --network net1 --subnet-range 10.11.12.0/24 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnet1
openstack router create router1

#Create server
openstack server create --flavor micro.ubuntu --image bionic-server-cloudimg-amd64 --network net1 --user-data userdata.txt --security-group default UbuntuServer
