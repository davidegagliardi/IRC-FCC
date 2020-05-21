# route traffic to reach the IRC-server (Floating IP) through IAAS VM
sudo ip route add 172.24.4.0/24 via 10.235.1.104 dev ens3
