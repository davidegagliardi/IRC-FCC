P_USERNAME=IRC-user
P_PASSWORD=IRC
P_PROJECTN=IRC-project

# Project creation and user creation
openstack project create --description "This is IRC Project" "${P_PROJECTN}"
openstack user create --password "${P_PASSWORD}" "${P_USERNAME}"
openstack role add --project "${P_PROJECTN}" --user "${P_USERNAME}" "member"

#Get Alpine image and create the image
wget -P /var/tmp -c http://dl-cdn.alpinelinux.org/alpine/v3.11/releases/x86_64/alpine-standard-3.11.6-x86_64.iso
openstack image create --disk-format iso --container-format bare --public --file /var/tmp/alpine-standard-3.11.6-x86_64.iso alpine-standard-3.11.6-x86_64

#Create flavor
openstack flavor create --ram 512 --disk 5 --ephemeral 5 --vcpus 1 --public micro.alpine
openstack flavor create --ram 1024 --disk 5 --ephemeral 5 --vcpus 1 --public mini.alpine

#Network
openstack network create net1
openstack subnet create --network net1 --subnet-range 10.11.12.0/24 --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnet1
openstack router create router1
