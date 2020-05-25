#Variables
$P_USERNAME=IRC-user
$P_PASSWORD=IRC
$P_PROJECTN=IRC-project

#Project creation and User Creation and Assignment
openstack project create --description "This is IRC Project" "${P_PROJECTN}"
openstack user create --password "${P_PASSWORD}" "${P_USERNAME}"
openstack role add --project "${P_PROJECTN}" --user "${P_USERNAME}" "member"

#Image Creation
wget -P /var/tmp -c https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
openstack image create --disk-format qcow2 --container-format bare --public --file /var/tmp/bionic-server-cloudimg-amd64.img bionic-server-cloudimg-amd64

#Create flavor
openstack flavor create --ram 512 --disk 5  --ephemeral 5 --vcpus 1 --public micro.ubuntu --project $P_PROJECTN
openstack flavor create --ram 1024 --disk 5  --ephemeral 5 --vcpus 1 --public mini.ubuntu --project $P_PROJECTN
