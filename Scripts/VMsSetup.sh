#!/bin/bash
#+----------------------------------------------+
#|              Univerity of Trento             |
#|        Cloud and Network Infrastructure      |
#|                  A.Y. 2019/2020              |
#|         Fog and Cloud Computing Course       |
#|    Authors:                                  |
#|    - Andrea Abriani                          |
#|    - Davide Gagliardi                        |
#+----------------------------------------------+
#Sources
source Scripts/Sources/login-IRC-admin.sh
source Scripts/Sources/Variables.sh
#Hub1 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRC-Server   --network netIRCHub1    --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING --wait IRC-Hub-1
#Hub2 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRC-Server   --network netIRCHub2    --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING --wait IRC-Hub-2
#Leaf1 Instance Creation
openstack server create --flavor mini.ubuntu  --image IRC-Server   --network netIRCLeaves  --key-name cloudkey   --security-group IRCServer --security-group SSH --security-group PING --wait IRC-Leaf-1
#WebServer Instance Creation
openstack server create --flavor micro.ubuntu --image WebServer    --network netWeb        --key-name cloudkey   --security-group WebGroup  --security-group SSH --security-group PING --wait WebServer
#ClientOper Instance Creation
openstack server create --flavor micro.ubuntu --image IRC-Client   --network netOper       --key-name cloudkey   --security-group IRCClient --security-group SSH --security-group PING --wait ClientOper
#Floating IPs association
openstack server add floating ip IRC-Leaf-1   172.24.4.150
openstack server add floating ip IRC-Hub-1    172.24.4.200
openstack server add floating ip IRC-Hub-2    172.24.4.201
openstack server add floating ip WebServer    172.24.4.220
openstack server add floating ip ClientOper   172.24.4.230
