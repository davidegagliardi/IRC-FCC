## Implemented in Ubuntu Server 18.04 Bionic VM 

# install g++ compiler
sudo apt install build-essential

# get source code InspIRCd
wget "https://github.com/inspircd/inspircd/archive/v3.6.0.tar.gz"

# unpack the archive
tar -xvf "./v3.6.0.tar.gz"

# run interactive wizard configuration from InspIRCd source directory (no changes done)
./home/ubuntu/inspircd-3.6.0/configure

# build from source
make -j2 install

# set a server config file as default example one
cp /home/ubuntu/inspircd-3.6.0/run/conf/examples/inspircd.conf.example /home/ubuntu/inspircd-3.6.0/run/conf/inspirc.conf
# cp ~/inspircd-3.6.0/run/conf/examples/inspircd.conf.example ~/inspircd-3.6.0/run/conf/inspirc.conf

# run InspIRCd service
./home/ubuntu/inspircd-3.6.0/run/inspircd start
# .~/inspircd-3.6.0/run/inspircd start
