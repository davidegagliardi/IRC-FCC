source login-as-admin.sh
EX_IRCD=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
OLD_ID=$(wc -w <<< $EX_IRCD)
NEW_ID=$((OLD_ID + 1))
openstack server create --flavor mini.ubuntu --image IRC-Server-Image --network netIRC --security-group default IRC-Server-$NEW_ID
$FLOATIP_NEWIRCD=

# working command from within the instance
#sed -i 's/<define name="servername" value="change">/yesssss/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf

# working command from the VM to the instance
#ssh -i cloud.key ubuntu@172.24.4.194 -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver$NEW_ID\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"

ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver$NEW_ID\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
