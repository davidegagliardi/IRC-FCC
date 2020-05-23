source login-as-admin.sh
EX_IRCD=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
wc -w <<< $EX_IRCD
openstack server create --flavor mini.ubuntu --image IRC-Server-Image --network netIRC --security-group default IRC-Server-$EX_IRCD
$FLOATIP_NEWIRCD=
ssh -t ubuntu@$FLOATIP_NEWIRCD 'sed;sed'

ssh -t ubuntu@$FLOATIP_NEWIRCD 'sed -i 's/<define name="servername" value="change">/yesssss/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf'
sed -i 's/<define name="servername" value="change">/yesssss/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf
