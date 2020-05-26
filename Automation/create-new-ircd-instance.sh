source login-IRC-admin.sh
EX_IRCD=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
OLD_ID=$(wc -w <<< $EX_IRCD)
NEW_ID=$((OLD_ID + 1))
IP_VM=$(openstack server list -c Networks -c Name --format value | grep "IRC-Server-$NEW_ID" | cut -d '=' -f 2)
openstack server create --flavor mini.ubuntu --image IRC-Server-Image --network netIRCLeaves IRC-Server-$NEW_ID
FLOATIP_PREFIX=172.24.4.
FLOATIP_NEWIRCD="$FLOATIP_PREFIX$NEW_ID"
openstack floating ip create --floating-ip-address $FLOATIP_NEWIRCD --project $P_PROJECTN public
openstack server add floating ip --fixed-ip-address $IP_VM IRC-Server-$NEW_ID $FLOATIP_NEWIRCD

# working command from within the instance
#sed -i 's/<define name="servername" value="change">/yesssss/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf

# working command from the VM to the instance
#ssh -i cloud.key ubuntu@172.24.4.194 -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver$NEW_ID\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"

# insert new leaf link to hubs from within the instance
#sed 'N a <LINE-TO-BE-ADDED>' FILE.txt

#sed -i "1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0/25\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">" /home/ubuntu/inspircd-3.6.0/run/conf/links.conf
#ssh -i cloud.key ubuntu@172.24.4.194 -t "sed -i '1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0/25\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"

# give new IRCD leaf link config to both hubs
ssh -i cloud.key ubuntu@$FLOATIP_HUB1 -t "sed -i '1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0/25\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@$FLOATIP_HUB2 -t "sed -i '1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0/25\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"

# give appropriate name to IRCD leaf just configured
ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver$NEW_ID\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"
