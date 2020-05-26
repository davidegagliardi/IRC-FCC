source login-IRC-admin.sh

IP_HUB1=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.8\.[[:digit:]]*')
IP_HUB2=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.9\.[[:digit:]]*')
EX_IRCD=$(openstack server list -c Networks -c Name --format value | grep -Po '10\.11\.12\.[[:digit:]]*')
OLD_ID=$(wc -w <<< $EX_IRCD)
NEW_ID=$((OLD_ID + 1))
openstack server create --flavor mini.ubuntu --image IRC-ServerImage --network netIRCLeaves --key-name cloudkey --security-group IRCServer --security-group SSH --security-group PING --wait IRC-Leaf-$NEW_ID
IP_VM=$(openstack server list -c Networks -c Name --format value | grep "IRC-Leaf-$NEW_ID" | cut -d '=' -f 2)
FLOATIP_PREFIX=172.24.4.
FLOATIP_SUFFIX=$((NEW_ID + 149))
FLOATIP_NEWIRCD="$FLOATIP_PREFIX$FLOATIP_SUFFIX"
openstack floating ip create --floating-ip-address $FLOATIP_NEWIRCD --project $P_PROJECTN public
openstack server add floating ip IRC-Leaf-$NEW_ID $FLOATIP_NEWIRCD

# working command from within the instance
#sed -i 's/<define name="servername" value="change">/yesssss/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf

# working command from the VM to the instance
#ssh -i cloud.key ubuntu@172.24.4.194 -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver$NEW_ID\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"

# insert new leaf link to hubs from within the instance
#sed 'N a <LINE-TO-BE-ADDED>' FILE.txt

#sed -i "1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0/25\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">" /home/ubuntu/inspircd-3.6.0/run/conf/links.conf
#ssh -i cloud.key ubuntu@172.24.4.194 -t "sed -i '1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0/25\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"

# give appropriate name to IRCD leaf just configured
ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i 's/<define name=\"servername\" value=\"change\">/<define name=\"servername\" value=\"ircserver$NEW_ID\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/inspircd.conf"

# give new IRCD leaf link config to both hubs

ssh -i cloud.key ubuntu@172.24.4.200 -t "sed -i '1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0\/24\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@172.24.4.201 -t "sed -i '1i <link name=\"ircserver$NEW_ID.omega.example.org\" ipaddr=\"$IP_VM\" port=\"7000\" allowmask=\"10.11.12.0\/24\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password2\" recvpass=\"password1\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"


ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i '1i <link name=\"hub1.omega.example.org\" ipaddr=\"$IP_HUB1\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password1\" recvpass=\"password2\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i '1i <link name=\"hub2.omega.example.org\" ipaddr=\"$IP_HUB2\" port=\"7000\" allowmask=\"10.11.0.0\/16\" timeout=\"2m\" statshidden=\"no\" hidden=\"no\" sendpass=\"password1\" recvpass=\"password2\">' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"

#add autoconnect to hub1
ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i 's/<autoconnect period=\"20s\" server=\"hubN.omega.example.org\">/<autoconnect period=\"20s\" server=\"hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"
#add failover to hub2
ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "sed -i 's/<autoconnect period=\"3m\" server=\"hubN.omega.example.org hubN.omega.example.org\">/<autoconnect period=\"3m\" server=\"hub2.omega.example.org hub1.omega.example.org\">/g' /home/ubuntu/inspircd-3.6.0/run/conf/links.conf"


#Start
ssh -i cloud.key ubuntu@$FLOATIP_NEWIRCD -t "cd /home/ubuntu/inspircd-3.6.0/run/ ; ./inspircd start "
