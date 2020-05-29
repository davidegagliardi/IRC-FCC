#!/bin/bash
#+----------------------------------------------+
#|              University of Trento             |
#|        Cloud and Network Infrastructure      |
#|                  A.Y. 2019/2020              |
#|         Fog and Cloud Computing Course       |
#|    Authors:                                  |
#|    - Andrea Abriani                          |
#|    - Davide Gagliardi                        |
#+----------------------------------------------+
#Sources
P_PROJECTN=IRC-project
#Network
openstack network create netIRCHub1 --project $P_PROJECTN
openstack network create netIRCHub2 --project $P_PROJECTN
openstack network create netIRCLeaves --project $P_PROJECTN
openstack network create netWeb --project $P_PROJECTN
openstack network create netOper --project $P_PROJECTN
#Subnets
openstack subnet create --network netIRCHub1    --gateway 10.11.8.1   --subnet-range 10.11.8.0/24   --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCHub1   --project $P_PROJECTN
openstack subnet create --network netIRCHub2    --gateway 10.11.9.1   --subnet-range 10.11.9.0/24   --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCHub2   --project $P_PROJECTN
openstack subnet create --network netOper       --gateway 10.11.10.1  --subnet-range 10.11.10.0/24  --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetOper      --project $P_PROJECTN
openstack subnet create --network netWeb        --gateway 10.11.11.1  --subnet-range 10.11.11.0/24  --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetWeb       --project $P_PROJECTN
openstack subnet create --network netIRCLeaves  --gateway 10.11.12.1  --subnet-range 10.11.12.0/24  --dns-nameserver 208.67.222.222 --dns-nameserver 208.67.220.220 subnetIRCLeaves --project $P_PROJECTN
#Router creation and connection
openstack router create VRout --availability-zone-hint nova --project $P_PROJECTN
#External connection to public network
openstack router set --external-gateway public VRout
openstack router add subnet VRout subnetIRCHub1
openstack router add subnet VRout subnetIRCHub2
openstack router add subnet VRout subnetIRCLeaves
openstack router add subnet VRout subnetWeb
openstack router add subnet VRout subnetOper
#Security group
openstack security group create IRCServer --project $P_PROJECTN
openstack security group create IRCClient --project $P_PROJECTN
openstack security group create WebGroup  --project $P_PROJECTN
openstack security group create SSH       --project $P_PROJECTN
openstack security group create PING      --project $P_PROJECTN
#Security group rules
openstack security group rule create IRCServer  --protocol tcp  --dst-port 7000:7000 --remote-ip 10.11.0.0/16
openstack security group rule create IRCServer  --protocol tcp  --dst-port 6667:6667 --remote-ip 0.0.0.0/0
openstack security group rule create IRCServer  --protocol tcp  --dst-port 80:80     --remote-ip 10.11.11.0/24
openstack security group rule create IRCClient  --protocol tcp  --dst-port 6667:6667 --remote-ip 0.0.0.0/0
openstack security group rule create WebGroup   --protocol tcp  --dst-port 80:80     --remote-ip 0.0.0.0/0
openstack security group rule create SSH        --protocol tcp  --dst-port 22:22     --remote-ip 0.0.0.0/0
openstack security group rule create PING       --protocol icmp                      --remote-ip 0.0.0.0/0
#Floating IPs
openstack floating ip create --floating-ip-address 172.24.4.150 --project $P_PROJECTN public
openstack floating ip create --floating-ip-address 172.24.4.200 --project $P_PROJECTN public
openstack floating ip create --floating-ip-address 172.24.4.201 --project $P_PROJECTN public
openstack floating ip create --floating-ip-address 172.24.4.220 --project $P_PROJECTN public
openstack floating ip create --floating-ip-address 172.24.4.230 --project $P_PROJECTN public
