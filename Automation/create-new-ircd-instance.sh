source login-as-admin.sh
EX_IRCD=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
openstack server create --flavor mini.ubuntu --image IRC-Server-Image --network netIRC --security-group default IRC-Server-1
