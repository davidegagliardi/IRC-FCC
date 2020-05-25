P_USERNAME=IRC-user-test
P_PASSWORD=IRC
P_PROJECTN=IRC-project-test

# Project creation and user creation
openstack project create --description "This is IRC Project" "${P_PROJECTN}"
openstack user create --password "${P_PASSWORD}" "${P_USERNAME}"
openstack role add --project "${P_PROJECTN}" --user "${P_USERNAME}" "member"

#cat "#cloud-config
#password: fogcloud
#chpasswd: { expire: False }
#ssh_pwauth: True" > userdatatest.txt

#Get Ubuntu image and create the image
wget -P /var/tmp -c https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
openstack image create --disk-format qcow2 --container-format bare --public --file /var/tmp/bionic-server-cloudimg-amd64.img bionic-server-cloudimg-amd64-test

#Create flavor
openstack flavor create --ram 512 --disk 5  --ephemeral 5 --vcpus 1 --public micro.ubuntu.test
openstack flavor create --ram 1024 --disk 5  --ephemeral 5 --vcpus 1 --public mini.ubuntu.test

#Network
openstack network create net1test
openstack subnet create --network net1test --subnet-range 10.11.12.0/24 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnet1
openstack router create router1

#Create server
openstack server create --flavor mini.ubuntu.test --image bionic-server-cloudimg-amd64-test --network net1test --user-data userdatatest.txt --security-group default UbuntuServerTest
