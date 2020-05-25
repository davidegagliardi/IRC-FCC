#!/bin/sh
sudo apt install build-essential -y
wget "https://github.com/inspircd/inspircd/archive/v3.6.0.tar.gz"
tar -xvf "./v3.6.0.tar.gz"
cd /home/ubuntu/inspircd-3.6.0
./configure --disable-interactive --prefix=/inspircd/
make -j2 install

cp /home/ubuntu/inspircd-3.6.0/run/conf/examples/inspircd.conf.example /home/ubuntu/inspircd-3.6.0/run/conf/inspirc.conf
# cp ~/inspircd-3.6.0/run/conf/examples/inspircd.conf.example ~/inspircd-3.6.0/run/conf/inspirc.conf

# run InspIRCd service
./home/ubuntu/inspircd-3.6.0/run/inspircd start
# .~/inspircd-3.6.0/run/inspircd start


sudo apt install build-essential -y
wget "https://github.com/inspircd/inspircd/archive/v3.6.0.tar.gz"
tar -xvf "./v3.6.0.tar.gz"
cd /home/ubuntu/inspircd-3.6.0

./configure --disable-interactive --prefix=/home/ubuntu/inspircd-3.6.0/ircd/
make -j2 install


cp ~/inspircd-3.6.0/irc/conf/examples/inspircd.conf.example ~/inspircd-3.6.0/irc/conf/inspirc.conf
cd ~/inspircd-3.6.0/irc

sudo ./inspircd start
.~/inspircd-3.6.0/irc/inspircd start

/home/ubuntu/inspircd-3.6.0/irc/inspircd start


adduser -uid 10000 -home /inspircd/ -D -S inspircd && mkdir -p /src /conf && cd /src &&

wget fjksjfkldj

cd /src/inspircd && \

./configure --disable-interactive --prefix=/inspircd/ --uid 10000  \

make -j2 install && \

cp -r /inspircd/conf/examples/ /conf && rm -rf /src && rm -rf /inspircd/conf && ln -s /dev/stdout /inspircd/logs/ircd.log && \

chown -R inspircd /inspircd/ && \


davide.gagliardi@stud-4:/home/IRC-Project$ ssh -i cloud.key ubuntu@172.24.4.133
The authenticity of host '172.24.4.133 (172.24.4.133)' can't be established.
ECDSA key fingerprint is SHA256:UcZ7cueJ+awAAdfl5jfZ1ahR/UznStVhEn2zXh5+r4I.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '172.24.4.133' (ECDSA) to the list of known hosts.
Welcome to Ubuntu 18.04.4 LTS (GNU/Linux 4.15.0-99-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Tue May 19 09:48:28 UTC 2020

  System load:  0.39              Processes:           84
  Usage of /:   5.1% of 19.21GB   Users logged in:     0
  Memory usage: 5%                IP address for ens3: 10.11.12.225
  Swap usage:   0%

0 packages can be updated.
0 updates are security updates.



The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@irc:~$ clear

ubuntu@irc:~$ sudo apt install build-essential -y
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following package was automatically installed and is no longer required:
  grub-pc-bin
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  binutils binutils-common binutils-x86-64-linux-gnu cpp cpp-7 dpkg-dev fakeroot g++ g++-7 gcc gcc-7 gcc-7-base libalgorithm-diff-perl
  libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan4 libatomic1 libbinutils libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl
  libfakeroot libfile-fcntllock-perl libgcc-7-dev libgomp1 libisl19 libitm1 liblsan0 libmpc3 libmpx2 libquadmath0 libstdc++-7-dev libtsan0 libubsan0
  linux-libc-dev make manpages-dev
Suggested packages:
  binutils-doc cpp-doc gcc-7-locales debian-keyring g++-multilib g++-7-multilib gcc-7-doc libstdc++6-7-dbg gcc-multilib autoconf automake libtool
  flex bison gdb gcc-doc gcc-7-multilib libgcc1-dbg libgomp1-dbg libitm1-dbg libatomic1-dbg libasan4-dbg liblsan0-dbg libtsan0-dbg libubsan0-dbg
  libcilkrts5-dbg libmpx2-dbg libquadmath0-dbg glibc-doc bzr libstdc++-7-doc make-doc
The following NEW packages will be installed:
  binutils binutils-common binutils-x86-64-linux-gnu build-essential cpp cpp-7 dpkg-dev fakeroot g++ g++-7 gcc gcc-7 gcc-7-base
  libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan4 libatomic1 libbinutils libc-dev-bin libc6-dev libcc1-0
  libcilkrts5 libdpkg-perl libfakeroot libfile-fcntllock-perl libgcc-7-dev libgomp1 libisl19 libitm1 liblsan0 libmpc3 libmpx2 libquadmath0
  libstdc++-7-dev libtsan0 libubsan0 linux-libc-dev make manpages-dev
0 upgraded, 40 newly installed, 0 to remove and 0 not upgraded.
Need to get 43.0 MB of archives.
After this operation, 165 MB of additional disk space will be used.
Get:1 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 binutils-common amd64 2.30-21ubuntu1~18.04.3 [196 kB]
Get:2 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libbinutils amd64 2.30-21ubuntu1~18.04.3 [488 kB]
Get:3 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 binutils-x86-64-linux-gnu amd64 2.30-21ubuntu1~18.04.3 [1839 kB]
Get:4 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 binutils amd64 2.30-21ubuntu1~18.04.3 [3388 B]
Get:5 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libc-dev-bin amd64 2.27-3ubuntu1 [71.8 kB]
Get:6 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 linux-libc-dev amd64 4.15.0-99.100 [1006 kB]
Get:7 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libc6-dev amd64 2.27-3ubuntu1 [2587 kB]
Get:8 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 gcc-7-base amd64 7.5.0-3ubuntu1~18.04 [18.3 kB]
Get:9 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libisl19 amd64 0.19-1 [551 kB]
Get:10 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libmpc3 amd64 1.1.0-1 [40.8 kB]
Get:11 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 cpp-7 amd64 7.5.0-3ubuntu1~18.04 [8591 kB]
Get:12 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 cpp amd64 4:7.4.0-1ubuntu2.3 [27.7 kB]
Get:13 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libcc1-0 amd64 8.4.0-1ubuntu1~18.04 [39.4 kB]
Get:14 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libgomp1 amd64 8.4.0-1ubuntu1~18.04 [76.5 kB]
Get:15 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libitm1 amd64 8.4.0-1ubuntu1~18.04 [27.9 kB]
Get:16 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libatomic1 amd64 8.4.0-1ubuntu1~18.04 [9192 B]
Get:17 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libasan4 amd64 7.5.0-3ubuntu1~18.04 [358 kB]
Get:18 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 liblsan0 amd64 8.4.0-1ubuntu1~18.04 [133 kB]
Get:19 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libtsan0 amd64 8.4.0-1ubuntu1~18.04 [288 kB]
Get:20 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libubsan0 amd64 7.5.0-3ubuntu1~18.04 [126 kB]
Get:21 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libcilkrts5 amd64 7.5.0-3ubuntu1~18.04 [42.5 kB]
Get:22 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libmpx2 amd64 8.4.0-1ubuntu1~18.04 [11.6 kB]
Get:23 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libquadmath0 amd64 8.4.0-1ubuntu1~18.04 [134 kB]
Get:24 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libgcc-7-dev amd64 7.5.0-3ubuntu1~18.04 [2378 kB]
Get:25 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 gcc-7 amd64 7.5.0-3ubuntu1~18.04 [9381 kB]
Get:26 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 gcc amd64 4:7.4.0-1ubuntu2.3 [5184 B]
Get:27 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libstdc++-7-dev amd64 7.5.0-3ubuntu1~18.04 [1471 kB]
Get:28 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 g++-7 amd64 7.5.0-3ubuntu1~18.04 [9697 kB]
Get:29 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 g++ amd64 4:7.4.0-1ubuntu2.3 [1568 B]
Get:30 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 make amd64 4.1-9.1ubuntu1 [154 kB]
Get:31 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libdpkg-perl all 1.19.0.5ubuntu2.3 [211 kB]
Get:32 http://nova.clouds.archive.ubuntu.com/ubuntu bionic-updates/main amd64 dpkg-dev all 1.19.0.5ubuntu2.3 [607 kB]
Get:33 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 build-essential amd64 12.4ubuntu1 [4758 B]
Get:34 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libfakeroot amd64 1.22-2ubuntu1 [25.9 kB]
Get:35 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 fakeroot amd64 1.22-2ubuntu1 [62.3 kB]
Get:36 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libalgorithm-diff-perl all 1.19.03-1 [47.6 kB]
Get:37 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libalgorithm-diff-xs-perl amd64 0.04-5 [11.1 kB]
Get:38 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libalgorithm-merge-perl all 0.08-3 [12.0 kB]
Get:39 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 libfile-fcntllock-perl amd64 0.22-3build2 [33.2 kB]
Get:40 http://nova.clouds.archive.ubuntu.com/ubuntu bionic/main amd64 manpages-dev all 4.15-1 [2217 kB]
Fetched 43.0 MB in 5s (8007 kB/s)
Extracting templates from packages: 100%
Selecting previously unselected package binutils-common:amd64.
(Reading database ... 60069 files and directories currently installed.)
Preparing to unpack .../00-binutils-common_2.30-21ubuntu1~18.04.3_amd64.deb ...
Unpacking binutils-common:amd64 (2.30-21ubuntu1~18.04.3) ...
Selecting previously unselected package libbinutils:amd64.
Preparing to unpack .../01-libbinutils_2.30-21ubuntu1~18.04.3_amd64.deb ...
Unpacking libbinutils:amd64 (2.30-21ubuntu1~18.04.3) ...
Selecting previously unselected package binutils-x86-64-linux-gnu.
Preparing to unpack .../02-binutils-x86-64-linux-gnu_2.30-21ubuntu1~18.04.3_amd64.deb ...
Unpacking binutils-x86-64-linux-gnu (2.30-21ubuntu1~18.04.3) ...
Selecting previously unselected package binutils.
Preparing to unpack .../03-binutils_2.30-21ubuntu1~18.04.3_amd64.deb ...
Unpacking binutils (2.30-21ubuntu1~18.04.3) ...
Selecting previously unselected package libc-dev-bin.
Preparing to unpack .../04-libc-dev-bin_2.27-3ubuntu1_amd64.deb ...
Unpacking libc-dev-bin (2.27-3ubuntu1) ...
Selecting previously unselected package linux-libc-dev:amd64.
Preparing to unpack .../05-linux-libc-dev_4.15.0-99.100_amd64.deb ...
Unpacking linux-libc-dev:amd64 (4.15.0-99.100) ...
Selecting previously unselected package libc6-dev:amd64.
Preparing to unpack .../06-libc6-dev_2.27-3ubuntu1_amd64.deb ...
Unpacking libc6-dev:amd64 (2.27-3ubuntu1) ...
Selecting previously unselected package gcc-7-base:amd64.
Preparing to unpack .../07-gcc-7-base_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking gcc-7-base:amd64 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package libisl19:amd64.
Preparing to unpack .../08-libisl19_0.19-1_amd64.deb ...
Unpacking libisl19:amd64 (0.19-1) ...
Selecting previously unselected package libmpc3:amd64.
Preparing to unpack .../09-libmpc3_1.1.0-1_amd64.deb ...
Unpacking libmpc3:amd64 (1.1.0-1) ...
Selecting previously unselected package cpp-7.
Preparing to unpack .../10-cpp-7_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking cpp-7 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package cpp.
Preparing to unpack .../11-cpp_4%3a7.4.0-1ubuntu2.3_amd64.deb ...
Unpacking cpp (4:7.4.0-1ubuntu2.3) ...
Selecting previously unselected package libcc1-0:amd64.
Preparing to unpack .../12-libcc1-0_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libcc1-0:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libgomp1:amd64.
Preparing to unpack .../13-libgomp1_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libgomp1:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libitm1:amd64.
Preparing to unpack .../14-libitm1_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libitm1:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libatomic1:amd64.
Preparing to unpack .../15-libatomic1_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libatomic1:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libasan4:amd64.
Preparing to unpack .../16-libasan4_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking libasan4:amd64 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package liblsan0:amd64.
Preparing to unpack .../17-liblsan0_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking liblsan0:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libtsan0:amd64.
Preparing to unpack .../18-libtsan0_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libtsan0:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libubsan0:amd64.
Preparing to unpack .../19-libubsan0_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking libubsan0:amd64 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package libcilkrts5:amd64.
Preparing to unpack .../20-libcilkrts5_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking libcilkrts5:amd64 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package libmpx2:amd64.
Preparing to unpack .../21-libmpx2_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libmpx2:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libquadmath0:amd64.
Preparing to unpack .../22-libquadmath0_8.4.0-1ubuntu1~18.04_amd64.deb ...
Unpacking libquadmath0:amd64 (8.4.0-1ubuntu1~18.04) ...
Selecting previously unselected package libgcc-7-dev:amd64.
Preparing to unpack .../23-libgcc-7-dev_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking libgcc-7-dev:amd64 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package gcc-7.
Preparing to unpack .../24-gcc-7_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking gcc-7 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package gcc.
Preparing to unpack .../25-gcc_4%3a7.4.0-1ubuntu2.3_amd64.deb ...
Unpacking gcc (4:7.4.0-1ubuntu2.3) ...
Selecting previously unselected package libstdc++-7-dev:amd64.
Preparing to unpack .../26-libstdc++-7-dev_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking libstdc++-7-dev:amd64 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package g++-7.
Preparing to unpack .../27-g++-7_7.5.0-3ubuntu1~18.04_amd64.deb ...
Unpacking g++-7 (7.5.0-3ubuntu1~18.04) ...
Selecting previously unselected package g++.
Preparing to unpack .../28-g++_4%3a7.4.0-1ubuntu2.3_amd64.deb ...
Unpacking g++ (4:7.4.0-1ubuntu2.3) ...
Selecting previously unselected package make.
Preparing to unpack .../29-make_4.1-9.1ubuntu1_amd64.deb ...
Unpacking make (4.1-9.1ubuntu1) ...
Selecting previously unselected package libdpkg-perl.
Preparing to unpack .../30-libdpkg-perl_1.19.0.5ubuntu2.3_all.deb ...
Unpacking libdpkg-perl (1.19.0.5ubuntu2.3) ...
Selecting previously unselected package dpkg-dev.
Preparing to unpack .../31-dpkg-dev_1.19.0.5ubuntu2.3_all.deb ...
Unpacking dpkg-dev (1.19.0.5ubuntu2.3) ...
Selecting previously unselected package build-essential.
Preparing to unpack .../32-build-essential_12.4ubuntu1_amd64.deb ...
Unpacking build-essential (12.4ubuntu1) ...
Selecting previously unselected package libfakeroot:amd64.
Preparing to unpack .../33-libfakeroot_1.22-2ubuntu1_amd64.deb ...
Unpacking libfakeroot:amd64 (1.22-2ubuntu1) ...
Selecting previously unselected package fakeroot.
Preparing to unpack .../34-fakeroot_1.22-2ubuntu1_amd64.deb ...
Unpacking fakeroot (1.22-2ubuntu1) ...
Selecting previously unselected package libalgorithm-diff-perl.
Preparing to unpack .../35-libalgorithm-diff-perl_1.19.03-1_all.deb ...
Unpacking libalgorithm-diff-perl (1.19.03-1) ...
Selecting previously unselected package libalgorithm-diff-xs-perl.
Preparing to unpack .../36-libalgorithm-diff-xs-perl_0.04-5_amd64.deb ...
Unpacking libalgorithm-diff-xs-perl (0.04-5) ...
Selecting previously unselected package libalgorithm-merge-perl.
Preparing to unpack .../37-libalgorithm-merge-perl_0.08-3_all.deb ...
Unpacking libalgorithm-merge-perl (0.08-3) ...
Selecting previously unselected package libfile-fcntllock-perl.
Preparing to unpack .../38-libfile-fcntllock-perl_0.22-3build2_amd64.deb ...
Unpacking libfile-fcntllock-perl (0.22-3build2) ...
Selecting previously unselected package manpages-dev.
Preparing to unpack .../39-manpages-dev_4.15-1_all.deb ...
Unpacking manpages-dev (4.15-1) ...
Setting up libquadmath0:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up libgomp1:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up libatomic1:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up libcc1-0:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up make (4.1-9.1ubuntu1) ...
Setting up libtsan0:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up linux-libc-dev:amd64 (4.15.0-99.100) ...
Setting up libdpkg-perl (1.19.0.5ubuntu2.3) ...
Setting up liblsan0:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up gcc-7-base:amd64 (7.5.0-3ubuntu1~18.04) ...
Setting up binutils-common:amd64 (2.30-21ubuntu1~18.04.3) ...
Setting up libfile-fcntllock-perl (0.22-3build2) ...
Setting up libmpx2:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up libfakeroot:amd64 (1.22-2ubuntu1) ...
Setting up libalgorithm-diff-perl (1.19.03-1) ...
Setting up libmpc3:amd64 (1.1.0-1) ...
Setting up libc-dev-bin (2.27-3ubuntu1) ...
Setting up manpages-dev (4.15-1) ...
Setting up libc6-dev:amd64 (2.27-3ubuntu1) ...
Setting up libitm1:amd64 (8.4.0-1ubuntu1~18.04) ...
Setting up libisl19:amd64 (0.19-1) ...
Setting up libasan4:amd64 (7.5.0-3ubuntu1~18.04) ...
Setting up libbinutils:amd64 (2.30-21ubuntu1~18.04.3) ...
Setting up libcilkrts5:amd64 (7.5.0-3ubuntu1~18.04) ...
Setting up libubsan0:amd64 (7.5.0-3ubuntu1~18.04) ...
Setting up fakeroot (1.22-2ubuntu1) ...
update-alternatives: using /usr/bin/fakeroot-sysv to provide /usr/bin/fakeroot (fakeroot) in auto mode
Setting up libgcc-7-dev:amd64 (7.5.0-3ubuntu1~18.04) ...
Setting up cpp-7 (7.5.0-3ubuntu1~18.04) ...
Setting up libstdc++-7-dev:amd64 (7.5.0-3ubuntu1~18.04) ...
Setting up libalgorithm-merge-perl (0.08-3) ...
Setting up libalgorithm-diff-xs-perl (0.04-5) ...
Setting up binutils-x86-64-linux-gnu (2.30-21ubuntu1~18.04.3) ...
Setting up cpp (4:7.4.0-1ubuntu2.3) ...
Setting up binutils (2.30-21ubuntu1~18.04.3) ...
Setting up gcc-7 (7.5.0-3ubuntu1~18.04) ...
Setting up g++-7 (7.5.0-3ubuntu1~18.04) ...
Setting up gcc (4:7.4.0-1ubuntu2.3) ...
Setting up dpkg-dev (1.19.0.5ubuntu2.3) ...
Setting up g++ (4:7.4.0-1ubuntu2.3) ...
update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
Setting up build-essential (12.4ubuntu1) ...
Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
Processing triggers for libc-bin (2.27-3ubuntu1) ...
ubuntu@irc:~$ adduser -u 10000 -h /inspircd/ -D -S inspircd && mkdir -p /src /conf && cd /src
adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] [--add_extra_groups]
[--encrypt-home] USER
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] [--add_extra_groups] USER
   Add a system user

adduser --group [--gid ID] GROUP
addgroup [--gid ID] GROUP
   Add a user group

addgroup --system [--gid ID] GROUP
   Add a system group

adduser USER GROUP
   Add an existing user to an existing group

general options:
  --quiet | -q      don't give process information to stdout
  --force-badname   allow usernames which do not match the
                    NAME_REGEX[_SYSTEM] configuration variable
  --extrausers      uses extra users as the database
  --help | -h       usage message
  --version | -v    version number and copyright
  --conf | -c FILE  use FILE as configuration file

mkdir: cannot create directory ‘/src’: Permission denied
mkdir: cannot create directory ‘/conf’: Permission denied
ubuntu@irc:~$ sudo adduser -u 10000 -h /inspircd/ -D -S inspircd && mkdir -p /src /conf && cd /src
adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] [--add_extra_groups]
[--encrypt-home] USER
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] [--add_extra_groups] USER
   Add a system user

adduser --group [--gid ID] GROUP
addgroup [--gid ID] GROUP
   Add a user group

addgroup --system [--gid ID] GROUP
   Add a system group

adduser USER GROUP
   Add an existing user to an existing group

general options:
  --quiet | -q      don't give process information to stdout
  --force-badname   allow usernames which do not match the
                    NAME_REGEX[_SYSTEM] configuration variable
  --extrausers      uses extra users as the database
  --help | -h       usage message
  --version | -v    version number and copyright
  --conf | -c FILE  use FILE as configuration file

mkdir: cannot create directory ‘/src’: Permission denied
mkdir: cannot create directory ‘/conf’: Permission denied
ubuntu@irc:~$ sudo adduser -u 10000 -h /inspircd/ -D -S inspircd
adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] [--add_extra_groups]
[--encrypt-home] USER
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] [--add_extra_groups] USER
   Add a system user

adduser --group [--gid ID] GROUP
addgroup [--gid ID] GROUP
   Add a user group

addgroup --system [--gid ID] GROUP
   Add a system group

adduser USER GROUP
   Add an existing user to an existing group

general options:
  --quiet | -q      don't give process information to stdout
  --force-badname   allow usernames which do not match the
                    NAME_REGEX[_SYSTEM] configuration variable
  --extrausers      uses extra users as the database
  --help | -h       usage message
  --version | -v    version number and copyright
  --conf | -c FILE  use FILE as configuration file

ubuntu@irc:~$ sudo adduser -u 10000 -h /inspircd/ -D -S inspircd
adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] [--add_extra_groups]
[--encrypt-home] USER
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] [--add_extra_groups] USER
   Add a system user

adduser --group [--gid ID] GROUP
addgroup [--gid ID] GROUP
   Add a user group

addgroup --system [--gid ID] GROUP
   Add a system group

adduser USER GROUP
   Add an existing user to an existing group

general options:
  --quiet | -q      don't give process information to stdout
  --force-badname   allow usernames which do not match the
                    NAME_REGEX[_SYSTEM] configuration variable
  --extrausers      uses extra users as the database
  --help | -h       usage message
  --version | -v    version number and copyright
  --conf | -c FILE  use FILE as configuration file

ubuntu@irc:~$ adduser -u 10000 -h /inspircd/
adduser [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--firstuid ID] [--lastuid ID] [--gecos GECOS] [--ingroup GROUP | --gid ID]
[--disabled-password] [--disabled-login] [--add_extra_groups]
[--encrypt-home] USER
   Add a normal user

adduser --system [--home DIR] [--shell SHELL] [--no-create-home] [--uid ID]
[--gecos GECOS] [--group | --ingroup GROUP | --gid ID] [--disabled-password]
[--disabled-login] [--add_extra_groups] USER
   Add a system user

adduser --group [--gid ID] GROUP
addgroup [--gid ID] GROUP
   Add a user group

addgroup --system [--gid ID] GROUP
   Add a system group

adduser USER GROUP
   Add an existing user to an existing group

general options:
  --quiet | -q      don't give process information to stdout
  --force-badname   allow usernames which do not match the
                    NAME_REGEX[_SYSTEM] configuration variable
  --extrausers      uses extra users as the database
  --help | -h       usage message
  --version | -v    version number and copyright
  --conf | -c FILE  use FILE as configuration file

ubuntu@irc:~$ adduser -u 10000 -home /inspircd/
adduser: Only root may add a user or group to the system.
ubuntu@irc:~$ sudo adduser -u 10000 -home /inspircd/
adduser: Only one or two names allowed.
ubuntu@irc:~$ sudo adduser -uid 10000 -home /inspircd/
adduser: Only one or two names allowed.
ubuntu@irc:~$ wget "https://github.com/inspircd/inspircd/archive/v3.6.0.tar.gz"
--2020-05-19 10:14:20--  https://github.com/inspircd/inspircd/archive/v3.6.0.tar.gz
Resolving github.com (github.com)... 140.82.118.4
Connecting to github.com (github.com)|140.82.118.4|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://codeload.github.com/inspircd/inspircd/tar.gz/v3.6.0 [following]
--2020-05-19 10:14:21--  https://codeload.github.com/inspircd/inspircd/tar.gz/v3.6.0
Resolving codeload.github.com (codeload.github.com)... 140.82.114.10
Connecting to codeload.github.com (codeload.github.com)|140.82.114.10|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/x-gzip]
Saving to: ‘v3.6.0.tar.gz’

v3.6.0.tar.gz                             [   <=>                                                                   ] 831.80K  1.34MB/s    in 0.6s

2020-05-19 10:14:22 (1.34 MB/s) - ‘v3.6.0.tar.gz’ saved [851768]

ubuntu@irc:~$ tar -xvf "./v3.6.0.tar.gz"
inspircd-3.6.0/
inspircd-3.6.0/.gitattributes
inspircd-3.6.0/.github/
inspircd-3.6.0/.github/ISSUE_TEMPLATE/
inspircd-3.6.0/.github/ISSUE_TEMPLATE/BUG_REPORT.md
inspircd-3.6.0/.github/ISSUE_TEMPLATE/FEATURE_REQUEST.md
inspircd-3.6.0/.github/ISSUE_TEMPLATE/config.yml
inspircd-3.6.0/.github/PULL_REQUEST_TEMPLATE.md
inspircd-3.6.0/.github/SECURITY.md
inspircd-3.6.0/.github/workflows/
inspircd-3.6.0/.github/workflows/ci-linux.yml
inspircd-3.6.0/.github/workflows/ci-macos.yml
inspircd-3.6.0/.github/workflows/misspell-fixer.yml
inspircd-3.6.0/.gitignore
inspircd-3.6.0/.mailmap
inspircd-3.6.0/README.md
inspircd-3.6.0/configure
inspircd-3.6.0/docs/
inspircd-3.6.0/docs/Doxyfile
inspircd-3.6.0/docs/LICENSE.txt
inspircd-3.6.0/docs/conf/
inspircd-3.6.0/docs/conf/codepages/
inspircd-3.6.0/docs/conf/codepages/ascii.conf.example
inspircd-3.6.0/docs/conf/codepages/latin1.conf.example
inspircd-3.6.0/docs/conf/codepages/rfc1459.conf.example
inspircd-3.6.0/docs/conf/codepages/strict-rfc1459.conf.example
inspircd-3.6.0/docs/conf/filter.conf.example
inspircd-3.6.0/docs/conf/helpop.conf.example
inspircd-3.6.0/docs/conf/inspircd.conf.example
inspircd-3.6.0/docs/conf/links.conf.example
inspircd-3.6.0/docs/conf/modules.conf.example
inspircd-3.6.0/docs/conf/motd.txt.example
inspircd-3.6.0/docs/conf/opermotd.txt.example
inspircd-3.6.0/docs/conf/opers.conf.example
inspircd-3.6.0/docs/conf/providers/
inspircd-3.6.0/docs/conf/providers/irccloud.conf.example
inspircd-3.6.0/docs/conf/providers/kiwiirc-com.conf.example
inspircd-3.6.0/docs/conf/quotes.txt.example
inspircd-3.6.0/docs/conf/services/
inspircd-3.6.0/docs/conf/services/anope.conf.example
inspircd-3.6.0/docs/conf/services/atheme.conf.example
inspircd-3.6.0/docs/conf/services/generic.conf.example
inspircd-3.6.0/docs/sql/
inspircd-3.6.0/docs/sql/sqloper.mysql.sql
inspircd-3.6.0/docs/sql/sqloper.pgsql.sql
inspircd-3.6.0/docs/sql/sqloper.sqlite3.sql
inspircd-3.6.0/include/
inspircd-3.6.0/include/aligned_storage.h
inspircd-3.6.0/include/bancache.h
inspircd-3.6.0/include/base.h
inspircd-3.6.0/include/channels.h
inspircd-3.6.0/include/clientprotocol.h
inspircd-3.6.0/include/clientprotocolevent.h
inspircd-3.6.0/include/clientprotocolmsg.h
inspircd-3.6.0/include/command_parse.h
inspircd-3.6.0/include/compat.h
inspircd-3.6.0/include/configparser.h
inspircd-3.6.0/include/configreader.h
inspircd-3.6.0/include/consolecolors.h
inspircd-3.6.0/include/convto.h
inspircd-3.6.0/include/ctables.h
inspircd-3.6.0/include/cull_list.h
inspircd-3.6.0/include/dynamic.h
inspircd-3.6.0/include/dynref.h
inspircd-3.6.0/include/event.h
inspircd-3.6.0/include/exitcodes.h
inspircd-3.6.0/include/extensible.h
inspircd-3.6.0/include/filelogger.h
inspircd-3.6.0/include/fileutils.h
inspircd-3.6.0/include/flat_map.h
inspircd-3.6.0/include/hashcomp.h
inspircd-3.6.0/include/inspircd.h
inspircd-3.6.0/include/inspsocket.h
inspircd-3.6.0/include/inspstring.h
inspircd-3.6.0/include/intrusive_list.h
inspircd-3.6.0/include/intrusive_list_impl.h
inspircd-3.6.0/include/iohook.h
inspircd-3.6.0/include/isupportmanager.h
inspircd-3.6.0/include/listmode.h
inspircd-3.6.0/include/logger.h
inspircd-3.6.0/include/membership.h
inspircd-3.6.0/include/message.h
inspircd-3.6.0/include/mode.h
inspircd-3.6.0/include/modechange.h
inspircd-3.6.0/include/moduledefs.h
inspircd-3.6.0/include/modules.h
inspircd-3.6.0/include/modules/
inspircd-3.6.0/include/modules/account.h
inspircd-3.6.0/include/modules/away.h
inspircd-3.6.0/include/modules/callerid.h
inspircd-3.6.0/include/modules/cap.h
inspircd-3.6.0/include/modules/ctctags.h
inspircd-3.6.0/include/modules/dns.h
inspircd-3.6.0/include/modules/exemption.h
inspircd-3.6.0/include/modules/geolocation.h
inspircd-3.6.0/include/modules/hash.h
inspircd-3.6.0/include/modules/httpd.h
inspircd-3.6.0/include/modules/invite.h
inspircd-3.6.0/include/modules/ircv3.h
inspircd-3.6.0/include/modules/ircv3_batch.h
inspircd-3.6.0/include/modules/ircv3_replies.h
inspircd-3.6.0/include/modules/ircv3_servertime.h
inspircd-3.6.0/include/modules/ldap.h
inspircd-3.6.0/include/modules/names.h
inspircd-3.6.0/include/modules/regex.h
inspircd-3.6.0/include/modules/reload.h
inspircd-3.6.0/include/modules/sasl.h
inspircd-3.6.0/include/modules/server.h
inspircd-3.6.0/include/modules/shun.h
inspircd-3.6.0/include/modules/sql.h
inspircd-3.6.0/include/modules/ssl.h
inspircd-3.6.0/include/modules/stats.h
inspircd-3.6.0/include/modules/webirc.h
inspircd-3.6.0/include/modules/who.h
inspircd-3.6.0/include/modules/whois.h
inspircd-3.6.0/include/numeric.h
inspircd-3.6.0/include/numericbuilder.h
inspircd-3.6.0/include/numerics.h
inspircd-3.6.0/include/parammode.h
inspircd-3.6.0/include/protocol.h
inspircd-3.6.0/include/serialize.h
inspircd-3.6.0/include/server.h
inspircd-3.6.0/include/snomasks.h
inspircd-3.6.0/include/socket.h
inspircd-3.6.0/include/socketengine.h
inspircd-3.6.0/include/stdalgo.h
inspircd-3.6.0/include/threadengine.h
inspircd-3.6.0/include/threadengines/
inspircd-3.6.0/include/threadengines/threadengine_pthread.h
inspircd-3.6.0/include/threadengines/threadengine_win32.h
inspircd-3.6.0/include/timer.h
inspircd-3.6.0/include/token_list.h
inspircd-3.6.0/include/typedefs.h
inspircd-3.6.0/include/uid.h
inspircd-3.6.0/include/usermanager.h
inspircd-3.6.0/include/users.h
inspircd-3.6.0/include/xline.h
inspircd-3.6.0/locales/
inspircd-3.6.0/locales/bynets/
inspircd-3.6.0/locales/bynets/belarussian-w1251-charlink
inspircd-3.6.0/locales/bynets/chinese
inspircd-3.6.0/locales/bynets/chinese-ja
inspircd-3.6.0/locales/bynets/chinese-simp
inspircd-3.6.0/locales/bynets/chinese-trad
inspircd-3.6.0/locales/bynets/gbk
inspircd-3.6.0/locales/bynets/hebrew
inspircd-3.6.0/locales/bynets/latin1
inspircd-3.6.0/locales/bynets/latin2
inspircd-3.6.0/locales/bynets/russian-utf8-ranges
inspircd-3.6.0/locales/bynets/russian-w1251-charlink
inspircd-3.6.0/locales/bynets/ukrainian-w1251-charlink
inspircd-3.6.0/locales/bynets/windows-1250
inspircd-3.6.0/locales/ca_ES.iso88591
inspircd-3.6.0/locales/ca_ES.iso88591_braces
inspircd-3.6.0/locales/cjk-utf8
inspircd-3.6.0/locales/cp1250
inspircd-3.6.0/locales/cp1250_braces
inspircd-3.6.0/locales/cp1251
inspircd-3.6.0/locales/cp1251_braces
inspircd-3.6.0/locales/cs_CZ.cp1250
inspircd-3.6.0/locales/cs_CZ.cp1250_braces
inspircd-3.6.0/locales/da_DK.iso88591
inspircd-3.6.0/locales/da_DK.iso88591_braces
inspircd-3.6.0/locales/de_CH.iso88591
inspircd-3.6.0/locales/de_CH.iso88591_braces
inspircd-3.6.0/locales/de_DE.iso88591
inspircd-3.6.0/locales/de_DE.iso88591_braces
inspircd-3.6.0/locales/el_GR.iso88597
inspircd-3.6.0/locales/el_GR.iso88597_braces
inspircd-3.6.0/locales/es_ES.iso88591
inspircd-3.6.0/locales/es_ES.iso88591_braces
inspircd-3.6.0/locales/fr_FR.iso88591
inspircd-3.6.0/locales/fr_FR.iso88591_braces
inspircd-3.6.0/locales/hu_HU.iso88592
inspircd-3.6.0/locales/hu_HU.iso88592_braces
inspircd-3.6.0/locales/is_IS.iso88591
inspircd-3.6.0/locales/is_IS.iso88591_braces
inspircd-3.6.0/locales/iso88591
inspircd-3.6.0/locales/iso88591_braces
inspircd-3.6.0/locales/iso88592
inspircd-3.6.0/locales/iso88592_braces
inspircd-3.6.0/locales/iso88597
inspircd-3.6.0/locales/iso88597_braces
inspircd-3.6.0/locales/iso88599
inspircd-3.6.0/locales/iso88599_braces
inspircd-3.6.0/locales/it_IT.iso88591
inspircd-3.6.0/locales/it_IT.iso88591_braces
inspircd-3.6.0/locales/nl_NL.iso88591
inspircd-3.6.0/locales/nl_NL.iso88591_braces
inspircd-3.6.0/locales/pl_PL.cp1250
inspircd-3.6.0/locales/pl_PL.cp1250_braces
inspircd-3.6.0/locales/pl_PL.iso88592
inspircd-3.6.0/locales/pl_PL.iso88592_braces
inspircd-3.6.0/locales/readme.txt
inspircd-3.6.0/locales/ro_RO.iso88592
inspircd-3.6.0/locales/ro_RO.iso88592_braces
inspircd-3.6.0/locales/ru_RU.cp1251
inspircd-3.6.0/locales/ru_RU.cp1251_braces
inspircd-3.6.0/locales/ru_RU.koi8r
inspircd-3.6.0/locales/ru_RU.koi8r_braces
inspircd-3.6.0/locales/russian-utf8-ranges
inspircd-3.6.0/locales/sk_SK.cp1250
inspircd-3.6.0/locales/sk_SK.cp1250_braces
inspircd-3.6.0/locales/sv_SE.iso88591
inspircd-3.6.0/locales/sv_SE.iso88591_braces
inspircd-3.6.0/locales/tr_TR.iso88599
inspircd-3.6.0/locales/tr_TR.iso88599_braces
inspircd-3.6.0/make/
inspircd-3.6.0/make/calcdep.pl
inspircd-3.6.0/make/common.pm
inspircd-3.6.0/make/configure.pm
inspircd-3.6.0/make/console.pm
inspircd-3.6.0/make/directive.pm
inspircd-3.6.0/make/template/
inspircd-3.6.0/make/template/bsd.mk
inspircd-3.6.0/make/template/config.h
inspircd-3.6.0/make/template/inspircd
inspircd-3.6.0/make/template/inspircd-genssl.1
inspircd-3.6.0/make/template/inspircd.1
inspircd-3.6.0/make/template/inspircd.service
inspircd-3.6.0/make/template/main.mk
inspircd-3.6.0/make/template/org.inspircd.plist
inspircd-3.6.0/make/test/
inspircd-3.6.0/make/test/arc4random_buf.cpp
inspircd-3.6.0/make/test/clock_gettime.cpp
inspircd-3.6.0/make/test/compiler.cpp
inspircd-3.6.0/make/test/compiler_info.cpp
inspircd-3.6.0/make/test/eventfd.cpp
inspircd-3.6.0/make/test/kqueue.cpp
inspircd-3.6.0/make/unit-cc.pl
inspircd-3.6.0/modulemanager
inspircd-3.6.0/sources.list
inspircd-3.6.0/src/
inspircd-3.6.0/src/bancache.cpp
inspircd-3.6.0/src/base.cpp
inspircd-3.6.0/src/channels.cpp
inspircd-3.6.0/src/cidr.cpp
inspircd-3.6.0/src/clientprotocol.cpp
inspircd-3.6.0/src/command_parse.cpp
inspircd-3.6.0/src/commands.cpp
inspircd-3.6.0/src/configparser.cpp
inspircd-3.6.0/src/configreader.cpp
inspircd-3.6.0/src/coremods/
inspircd-3.6.0/src/coremods/core_channel/
inspircd-3.6.0/src/coremods/core_channel/cmd_invite.cpp
inspircd-3.6.0/src/coremods/core_channel/cmd_join.cpp
inspircd-3.6.0/src/coremods/core_channel/cmd_kick.cpp
inspircd-3.6.0/src/coremods/core_channel/cmd_names.cpp
inspircd-3.6.0/src/coremods/core_channel/cmd_topic.cpp
inspircd-3.6.0/src/coremods/core_channel/cmode_k.cpp
inspircd-3.6.0/src/coremods/core_channel/cmode_l.cpp
inspircd-3.6.0/src/coremods/core_channel/core_channel.cpp
inspircd-3.6.0/src/coremods/core_channel/core_channel.h
inspircd-3.6.0/src/coremods/core_channel/invite.cpp
inspircd-3.6.0/src/coremods/core_channel/invite.h
inspircd-3.6.0/src/coremods/core_dns.cpp
inspircd-3.6.0/src/coremods/core_hostname_lookup.cpp
inspircd-3.6.0/src/coremods/core_info/
inspircd-3.6.0/src/coremods/core_info/cmd_admin.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_commands.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_info.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_modules.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_motd.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_servlist.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_time.cpp
inspircd-3.6.0/src/coremods/core_info/cmd_version.cpp
inspircd-3.6.0/src/coremods/core_info/core_info.cpp
inspircd-3.6.0/src/coremods/core_info/core_info.h
inspircd-3.6.0/src/coremods/core_list.cpp
inspircd-3.6.0/src/coremods/core_loadmodule.cpp
inspircd-3.6.0/src/coremods/core_lusers.cpp
inspircd-3.6.0/src/coremods/core_message.cpp
inspircd-3.6.0/src/coremods/core_mode.cpp
inspircd-3.6.0/src/coremods/core_oper/
inspircd-3.6.0/src/coremods/core_oper/cmd_die.cpp
inspircd-3.6.0/src/coremods/core_oper/cmd_kill.cpp
inspircd-3.6.0/src/coremods/core_oper/cmd_oper.cpp
inspircd-3.6.0/src/coremods/core_oper/cmd_rehash.cpp
inspircd-3.6.0/src/coremods/core_oper/cmd_restart.cpp
inspircd-3.6.0/src/coremods/core_oper/core_oper.cpp
inspircd-3.6.0/src/coremods/core_oper/core_oper.h
inspircd-3.6.0/src/coremods/core_reloadmodule.cpp
inspircd-3.6.0/src/coremods/core_serialize_rfc.cpp
inspircd-3.6.0/src/coremods/core_stats.cpp
inspircd-3.6.0/src/coremods/core_stub.cpp
inspircd-3.6.0/src/coremods/core_user/
inspircd-3.6.0/src/coremods/core_user/cmd_away.cpp
inspircd-3.6.0/src/coremods/core_user/cmd_ison.cpp
inspircd-3.6.0/src/coremods/core_user/cmd_nick.cpp
inspircd-3.6.0/src/coremods/core_user/cmd_part.cpp
inspircd-3.6.0/src/coremods/core_user/cmd_quit.cpp
inspircd-3.6.0/src/coremods/core_user/cmd_user.cpp
inspircd-3.6.0/src/coremods/core_user/cmd_userhost.cpp
inspircd-3.6.0/src/coremods/core_user/core_user.cpp
inspircd-3.6.0/src/coremods/core_user/core_user.h
inspircd-3.6.0/src/coremods/core_user/umode_o.cpp
inspircd-3.6.0/src/coremods/core_user/umode_s.cpp
inspircd-3.6.0/src/coremods/core_wallops.cpp
inspircd-3.6.0/src/coremods/core_who.cpp
inspircd-3.6.0/src/coremods/core_whois.cpp
inspircd-3.6.0/src/coremods/core_whowas.cpp
inspircd-3.6.0/src/coremods/core_xline/
inspircd-3.6.0/src/coremods/core_xline/cmd_eline.cpp
inspircd-3.6.0/src/coremods/core_xline/cmd_gline.cpp
inspircd-3.6.0/src/coremods/core_xline/cmd_kline.cpp
inspircd-3.6.0/src/coremods/core_xline/cmd_qline.cpp
inspircd-3.6.0/src/coremods/core_xline/cmd_zline.cpp
inspircd-3.6.0/src/coremods/core_xline/core_xline.cpp
inspircd-3.6.0/src/coremods/core_xline/core_xline.h
inspircd-3.6.0/src/cull_list.cpp
inspircd-3.6.0/src/dynamic.cpp
inspircd-3.6.0/src/filelogger.cpp
inspircd-3.6.0/src/fileutils.cpp
inspircd-3.6.0/src/hashcomp.cpp
inspircd-3.6.0/src/helperfuncs.cpp
inspircd-3.6.0/src/inspircd.cpp
inspircd-3.6.0/src/inspsocket.cpp
inspircd-3.6.0/src/inspstring.cpp
inspircd-3.6.0/src/listensocket.cpp
inspircd-3.6.0/src/listmode.cpp
inspircd-3.6.0/src/logger.cpp
inspircd-3.6.0/src/mode.cpp
inspircd-3.6.0/src/modulemanager.cpp
inspircd-3.6.0/src/modules.cpp
inspircd-3.6.0/src/modules/
inspircd-3.6.0/src/modules/extra/
inspircd-3.6.0/src/modules/extra/README
inspircd-3.6.0/src/modules/extra/m_geo_maxmind.cpp
inspircd-3.6.0/src/modules/extra/m_ldap.cpp
inspircd-3.6.0/src/modules/extra/m_mysql.cpp
inspircd-3.6.0/src/modules/extra/m_pgsql.cpp
inspircd-3.6.0/src/modules/extra/m_regex_pcre.cpp
inspircd-3.6.0/src/modules/extra/m_regex_posix.cpp
inspircd-3.6.0/src/modules/extra/m_regex_re2.cpp
inspircd-3.6.0/src/modules/extra/m_regex_stdlib.cpp
inspircd-3.6.0/src/modules/extra/m_regex_tre.cpp
inspircd-3.6.0/src/modules/extra/m_sqlite3.cpp
inspircd-3.6.0/src/modules/extra/m_ssl_gnutls.cpp
inspircd-3.6.0/src/modules/extra/m_ssl_mbedtls.cpp
inspircd-3.6.0/src/modules/extra/m_ssl_openssl.cpp
inspircd-3.6.0/src/modules/extra/m_sslrehashsignal.cpp
inspircd-3.6.0/src/modules/m_abbreviation.cpp
inspircd-3.6.0/src/modules/m_alias.cpp
inspircd-3.6.0/src/modules/m_allowinvite.cpp
inspircd-3.6.0/src/modules/m_alltime.cpp
inspircd-3.6.0/src/modules/m_anticaps.cpp
inspircd-3.6.0/src/modules/m_auditorium.cpp
inspircd-3.6.0/src/modules/m_autoop.cpp
inspircd-3.6.0/src/modules/m_banexception.cpp
inspircd-3.6.0/src/modules/m_banredirect.cpp
inspircd-3.6.0/src/modules/m_bcrypt.cpp
inspircd-3.6.0/src/modules/m_blockamsg.cpp
inspircd-3.6.0/src/modules/m_blockcaps.cpp
inspircd-3.6.0/src/modules/m_blockcolor.cpp
inspircd-3.6.0/src/modules/m_botmode.cpp
inspircd-3.6.0/src/modules/m_callerid.cpp
inspircd-3.6.0/src/modules/m_cap.cpp
inspircd-3.6.0/src/modules/m_cban.cpp
inspircd-3.6.0/src/modules/m_censor.cpp
inspircd-3.6.0/src/modules/m_cgiirc.cpp
inspircd-3.6.0/src/modules/m_chancreate.cpp
inspircd-3.6.0/src/modules/m_chanfilter.cpp
inspircd-3.6.0/src/modules/m_chanhistory.cpp
inspircd-3.6.0/src/modules/m_chanlog.cpp
inspircd-3.6.0/src/modules/m_channames.cpp
inspircd-3.6.0/src/modules/m_channelban.cpp
inspircd-3.6.0/src/modules/m_check.cpp
inspircd-3.6.0/src/modules/m_chghost.cpp
inspircd-3.6.0/src/modules/m_chgident.cpp
inspircd-3.6.0/src/modules/m_chgname.cpp
inspircd-3.6.0/src/modules/m_classban.cpp
inspircd-3.6.0/src/modules/m_clearchan.cpp
inspircd-3.6.0/src/modules/m_cloaking.cpp
inspircd-3.6.0/src/modules/m_clones.cpp
inspircd-3.6.0/src/modules/m_codepage.cpp
inspircd-3.6.0/src/modules/m_commonchans.cpp
inspircd-3.6.0/src/modules/m_conn_join.cpp
inspircd-3.6.0/src/modules/m_conn_umodes.cpp
inspircd-3.6.0/src/modules/m_conn_waitpong.cpp
inspircd-3.6.0/src/modules/m_connectban.cpp
inspircd-3.6.0/src/modules/m_connflood.cpp
inspircd-3.6.0/src/modules/m_customprefix.cpp
inspircd-3.6.0/src/modules/m_customtitle.cpp
inspircd-3.6.0/src/modules/m_cycle.cpp
inspircd-3.6.0/src/modules/m_dccallow.cpp
inspircd-3.6.0/src/modules/m_deaf.cpp
inspircd-3.6.0/src/modules/m_delayjoin.cpp
inspircd-3.6.0/src/modules/m_delaymsg.cpp
inspircd-3.6.0/src/modules/m_denychans.cpp
inspircd-3.6.0/src/modules/m_disable.cpp
inspircd-3.6.0/src/modules/m_dnsbl.cpp
inspircd-3.6.0/src/modules/m_exemptchanops.cpp
inspircd-3.6.0/src/modules/m_filter.cpp
inspircd-3.6.0/src/modules/m_flashpolicyd.cpp
inspircd-3.6.0/src/modules/m_gecosban.cpp
inspircd-3.6.0/src/modules/m_geoban.cpp
inspircd-3.6.0/src/modules/m_geoclass.cpp
inspircd-3.6.0/src/modules/m_globalload.cpp
inspircd-3.6.0/src/modules/m_globops.cpp
inspircd-3.6.0/src/modules/m_haproxy.cpp
inspircd-3.6.0/src/modules/m_helpop.cpp
inspircd-3.6.0/src/modules/m_hidechans.cpp
inspircd-3.6.0/src/modules/m_hidelist.cpp
inspircd-3.6.0/src/modules/m_hidemode.cpp
inspircd-3.6.0/src/modules/m_hideoper.cpp
inspircd-3.6.0/src/modules/m_hostchange.cpp
inspircd-3.6.0/src/modules/m_hostcycle.cpp
inspircd-3.6.0/src/modules/m_httpd.cpp
inspircd-3.6.0/src/modules/m_httpd_acl.cpp
inspircd-3.6.0/src/modules/m_httpd_config.cpp
inspircd-3.6.0/src/modules/m_httpd_stats.cpp
inspircd-3.6.0/src/modules/m_ident.cpp
inspircd-3.6.0/src/modules/m_inviteexception.cpp
inspircd-3.6.0/src/modules/m_ircv3.cpp
inspircd-3.6.0/src/modules/m_ircv3_accounttag.cpp
inspircd-3.6.0/src/modules/m_ircv3_batch.cpp
inspircd-3.6.0/src/modules/m_ircv3_capnotify.cpp
inspircd-3.6.0/src/modules/m_ircv3_chghost.cpp
inspircd-3.6.0/src/modules/m_ircv3_ctctags.cpp
inspircd-3.6.0/src/modules/m_ircv3_echomessage.cpp
inspircd-3.6.0/src/modules/m_ircv3_invitenotify.cpp
inspircd-3.6.0/src/modules/m_ircv3_labeledresponse.cpp
inspircd-3.6.0/src/modules/m_ircv3_msgid.cpp
inspircd-3.6.0/src/modules/m_ircv3_servertime.cpp
inspircd-3.6.0/src/modules/m_ircv3_sts.cpp
inspircd-3.6.0/src/modules/m_joinflood.cpp
inspircd-3.6.0/src/modules/m_kicknorejoin.cpp
inspircd-3.6.0/src/modules/m_knock.cpp
inspircd-3.6.0/src/modules/m_ldapauth.cpp
inspircd-3.6.0/src/modules/m_ldapoper.cpp
inspircd-3.6.0/src/modules/m_lockserv.cpp
inspircd-3.6.0/src/modules/m_maphide.cpp
inspircd-3.6.0/src/modules/m_md5.cpp
inspircd-3.6.0/src/modules/m_messageflood.cpp
inspircd-3.6.0/src/modules/m_mlock.cpp
inspircd-3.6.0/src/modules/m_modenotice.cpp
inspircd-3.6.0/src/modules/m_monitor.cpp
inspircd-3.6.0/src/modules/m_muteban.cpp
inspircd-3.6.0/src/modules/m_namedmodes.cpp
inspircd-3.6.0/src/modules/m_namesx.cpp
inspircd-3.6.0/src/modules/m_nationalchars.cpp
inspircd-3.6.0/src/modules/m_nickflood.cpp
inspircd-3.6.0/src/modules/m_nicklock.cpp
inspircd-3.6.0/src/modules/m_noctcp.cpp
inspircd-3.6.0/src/modules/m_nokicks.cpp
inspircd-3.6.0/src/modules/m_nonicks.cpp
inspircd-3.6.0/src/modules/m_nonotice.cpp
inspircd-3.6.0/src/modules/m_nopartmsg.cpp
inspircd-3.6.0/src/modules/m_ojoin.cpp
inspircd-3.6.0/src/modules/m_operchans.cpp
inspircd-3.6.0/src/modules/m_operjoin.cpp
inspircd-3.6.0/src/modules/m_operlevels.cpp
inspircd-3.6.0/src/modules/m_operlog.cpp
inspircd-3.6.0/src/modules/m_opermodes.cpp
inspircd-3.6.0/src/modules/m_opermotd.cpp
inspircd-3.6.0/src/modules/m_operprefix.cpp
inspircd-3.6.0/src/modules/m_override.cpp
inspircd-3.6.0/src/modules/m_passforward.cpp
inspircd-3.6.0/src/modules/m_password_hash.cpp
inspircd-3.6.0/src/modules/m_pbkdf2.cpp
inspircd-3.6.0/src/modules/m_permchannels.cpp
inspircd-3.6.0/src/modules/m_randquote.cpp
inspircd-3.6.0/src/modules/m_redirect.cpp
inspircd-3.6.0/src/modules/m_regex_glob.cpp
inspircd-3.6.0/src/modules/m_remove.cpp
inspircd-3.6.0/src/modules/m_repeat.cpp
inspircd-3.6.0/src/modules/m_restrictchans.cpp
inspircd-3.6.0/src/modules/m_restrictmsg.cpp
inspircd-3.6.0/src/modules/m_rline.cpp
inspircd-3.6.0/src/modules/m_rmode.cpp
inspircd-3.6.0/src/modules/m_sajoin.cpp
inspircd-3.6.0/src/modules/m_sakick.cpp
inspircd-3.6.0/src/modules/m_samode.cpp
inspircd-3.6.0/src/modules/m_sanick.cpp
inspircd-3.6.0/src/modules/m_sapart.cpp
inspircd-3.6.0/src/modules/m_saquit.cpp
inspircd-3.6.0/src/modules/m_sasl.cpp
inspircd-3.6.0/src/modules/m_satopic.cpp
inspircd-3.6.0/src/modules/m_securelist.cpp
inspircd-3.6.0/src/modules/m_seenicks.cpp
inspircd-3.6.0/src/modules/m_serverban.cpp
inspircd-3.6.0/src/modules/m_services_account.cpp
inspircd-3.6.0/src/modules/m_servprotect.cpp
inspircd-3.6.0/src/modules/m_sethost.cpp
inspircd-3.6.0/src/modules/m_setident.cpp
inspircd-3.6.0/src/modules/m_setidle.cpp
inspircd-3.6.0/src/modules/m_setname.cpp
inspircd-3.6.0/src/modules/m_sha1.cpp
inspircd-3.6.0/src/modules/m_sha256.cpp
inspircd-3.6.0/src/modules/m_showfile.cpp
inspircd-3.6.0/src/modules/m_showwhois.cpp
inspircd-3.6.0/src/modules/m_shun.cpp
inspircd-3.6.0/src/modules/m_silence.cpp
inspircd-3.6.0/src/modules/m_spanningtree/
inspircd-3.6.0/src/modules/m_spanningtree/addline.cpp
inspircd-3.6.0/src/modules/m_spanningtree/away.cpp
inspircd-3.6.0/src/modules/m_spanningtree/cachetimer.h
inspircd-3.6.0/src/modules/m_spanningtree/capab.cpp
inspircd-3.6.0/src/modules/m_spanningtree/commandbuilder.h
inspircd-3.6.0/src/modules/m_spanningtree/commands.h
inspircd-3.6.0/src/modules/m_spanningtree/compat.cpp
inspircd-3.6.0/src/modules/m_spanningtree/delline.cpp
inspircd-3.6.0/src/modules/m_spanningtree/encap.cpp
inspircd-3.6.0/src/modules/m_spanningtree/fjoin.cpp
inspircd-3.6.0/src/modules/m_spanningtree/fmode.cpp
inspircd-3.6.0/src/modules/m_spanningtree/ftopic.cpp
inspircd-3.6.0/src/modules/m_spanningtree/hmac.cpp
inspircd-3.6.0/src/modules/m_spanningtree/idle.cpp
inspircd-3.6.0/src/modules/m_spanningtree/ijoin.cpp
inspircd-3.6.0/src/modules/m_spanningtree/link.h
inspircd-3.6.0/src/modules/m_spanningtree/main.cpp
inspircd-3.6.0/src/modules/m_spanningtree/main.h
inspircd-3.6.0/src/modules/m_spanningtree/metadata.cpp
inspircd-3.6.0/src/modules/m_spanningtree/misccommands.cpp
inspircd-3.6.0/src/modules/m_spanningtree/netburst.cpp
inspircd-3.6.0/src/modules/m_spanningtree/nick.cpp
inspircd-3.6.0/src/modules/m_spanningtree/nickcollide.cpp
inspircd-3.6.0/src/modules/m_spanningtree/num.cpp
inspircd-3.6.0/src/modules/m_spanningtree/opertype.cpp
inspircd-3.6.0/src/modules/m_spanningtree/override_map.cpp
inspircd-3.6.0/src/modules/m_spanningtree/override_squit.cpp
inspircd-3.6.0/src/modules/m_spanningtree/override_stats.cpp
inspircd-3.6.0/src/modules/m_spanningtree/override_whois.cpp
inspircd-3.6.0/src/modules/m_spanningtree/ping.cpp
inspircd-3.6.0/src/modules/m_spanningtree/pingtimer.cpp
inspircd-3.6.0/src/modules/m_spanningtree/pingtimer.h
inspircd-3.6.0/src/modules/m_spanningtree/pong.cpp
inspircd-3.6.0/src/modules/m_spanningtree/postcommand.cpp
inspircd-3.6.0/src/modules/m_spanningtree/precommand.cpp
inspircd-3.6.0/src/modules/m_spanningtree/protocolinterface.cpp
inspircd-3.6.0/src/modules/m_spanningtree/protocolinterface.h
inspircd-3.6.0/src/modules/m_spanningtree/rconnect.cpp
inspircd-3.6.0/src/modules/m_spanningtree/remoteuser.cpp
inspircd-3.6.0/src/modules/m_spanningtree/remoteuser.h
inspircd-3.6.0/src/modules/m_spanningtree/resolvers.cpp
inspircd-3.6.0/src/modules/m_spanningtree/resolvers.h
inspircd-3.6.0/src/modules/m_spanningtree/rsquit.cpp
inspircd-3.6.0/src/modules/m_spanningtree/save.cpp
inspircd-3.6.0/src/modules/m_spanningtree/server.cpp
inspircd-3.6.0/src/modules/m_spanningtree/servercommand.cpp
inspircd-3.6.0/src/modules/m_spanningtree/servercommand.h
inspircd-3.6.0/src/modules/m_spanningtree/sinfo.cpp
inspircd-3.6.0/src/modules/m_spanningtree/svsjoin.cpp
inspircd-3.6.0/src/modules/m_spanningtree/svsnick.cpp
inspircd-3.6.0/src/modules/m_spanningtree/svspart.cpp
inspircd-3.6.0/src/modules/m_spanningtree/tags.cpp
inspircd-3.6.0/src/modules/m_spanningtree/tags.h
inspircd-3.6.0/src/modules/m_spanningtree/translate.cpp
inspircd-3.6.0/src/modules/m_spanningtree/translate.h
inspircd-3.6.0/src/modules/m_spanningtree/treeserver.cpp
inspircd-3.6.0/src/modules/m_spanningtree/treeserver.h
inspircd-3.6.0/src/modules/m_spanningtree/treesocket.h
inspircd-3.6.0/src/modules/m_spanningtree/treesocket1.cpp
inspircd-3.6.0/src/modules/m_spanningtree/treesocket2.cpp
inspircd-3.6.0/src/modules/m_spanningtree/uid.cpp
inspircd-3.6.0/src/modules/m_spanningtree/utils.cpp
inspircd-3.6.0/src/modules/m_spanningtree/utils.h
inspircd-3.6.0/src/modules/m_sqlauth.cpp
inspircd-3.6.0/src/modules/m_sqloper.cpp
inspircd-3.6.0/src/modules/m_sslinfo.cpp
inspircd-3.6.0/src/modules/m_sslmodes.cpp
inspircd-3.6.0/src/modules/m_starttls.cpp
inspircd-3.6.0/src/modules/m_stripcolor.cpp
inspircd-3.6.0/src/modules/m_svshold.cpp
inspircd-3.6.0/src/modules/m_swhois.cpp
inspircd-3.6.0/src/modules/m_timedbans.cpp
inspircd-3.6.0/src/modules/m_tline.cpp
inspircd-3.6.0/src/modules/m_topiclock.cpp
inspircd-3.6.0/src/modules/m_uhnames.cpp
inspircd-3.6.0/src/modules/m_uninvite.cpp
inspircd-3.6.0/src/modules/m_userip.cpp
inspircd-3.6.0/src/modules/m_vhost.cpp
inspircd-3.6.0/src/modules/m_watch.cpp
inspircd-3.6.0/src/modules/m_websocket.cpp
inspircd-3.6.0/src/modules/m_xline_db.cpp
inspircd-3.6.0/src/serializable.cpp
inspircd-3.6.0/src/server.cpp
inspircd-3.6.0/src/snomasks.cpp
inspircd-3.6.0/src/socket.cpp
inspircd-3.6.0/src/socketengine.cpp
inspircd-3.6.0/src/socketengines/
inspircd-3.6.0/src/socketengines/socketengine_epoll.cpp
inspircd-3.6.0/src/socketengines/socketengine_kqueue.cpp
inspircd-3.6.0/src/socketengines/socketengine_poll.cpp
inspircd-3.6.0/src/socketengines/socketengine_select.cpp
inspircd-3.6.0/src/threadengine.cpp
inspircd-3.6.0/src/threadengines/
inspircd-3.6.0/src/threadengines/threadengine_pthread.cpp
inspircd-3.6.0/src/threadengines/threadengine_win32.cpp
inspircd-3.6.0/src/timer.cpp
inspircd-3.6.0/src/usermanager.cpp
inspircd-3.6.0/src/users.cpp
inspircd-3.6.0/src/version.sh
inspircd-3.6.0/src/wildcard.cpp
inspircd-3.6.0/src/xline.cpp
inspircd-3.6.0/tools/
inspircd-3.6.0/tools/directive
inspircd-3.6.0/tools/genssl
inspircd-3.6.0/tools/mkdescriptions
inspircd-3.6.0/tools/mkheaders
inspircd-3.6.0/tools/test-build
inspircd-3.6.0/vendor/
inspircd-3.6.0/vendor/README.md
inspircd-3.6.0/vendor/bcrypt/
inspircd-3.6.0/vendor/bcrypt/crypt_blowfish.c
inspircd-3.6.0/vendor/bcrypt/crypt_blowfish.h
inspircd-3.6.0/vendor/http_parser/
inspircd-3.6.0/vendor/http_parser/http_parser.c
inspircd-3.6.0/vendor/http_parser/http_parser.h
inspircd-3.6.0/vendor/optional-lite/
inspircd-3.6.0/vendor/optional-lite/optional.hpp
inspircd-3.6.0/vendor/sha2/
inspircd-3.6.0/vendor/sha2/sha2.c
inspircd-3.6.0/vendor/sha2/sha2.h
inspircd-3.6.0/vendor/update
inspircd-3.6.0/vendor/update.toml
inspircd-3.6.0/vendor/utfcpp/
inspircd-3.6.0/vendor/utfcpp/utf8.h
inspircd-3.6.0/vendor/utfcpp/utf8/
inspircd-3.6.0/vendor/utfcpp/utf8/checked.h
inspircd-3.6.0/vendor/utfcpp/utf8/core.h
inspircd-3.6.0/vendor/utfcpp/utf8/cpp11.h
inspircd-3.6.0/vendor/utfcpp/utf8/unchecked.h
inspircd-3.6.0/vendor/ya_getopt/
inspircd-3.6.0/vendor/ya_getopt/ya_getopt.c
inspircd-3.6.0/vendor/ya_getopt/ya_getopt.h
inspircd-3.6.0/win/
inspircd-3.6.0/win/.gitignore
inspircd-3.6.0/win/CMakeLists.txt
inspircd-3.6.0/win/NSIS.template.in
inspircd-3.6.0/win/README.txt
inspircd-3.6.0/win/build/
inspircd-3.6.0/win/build/.gitignore
inspircd-3.6.0/win/inspircd.ico
inspircd-3.6.0/win/inspircd.rc.cmake
inspircd-3.6.0/win/inspircd_memory_functions.cpp
inspircd-3.6.0/win/inspircd_win32wrapper.cpp
inspircd-3.6.0/win/inspircd_win32wrapper.h
inspircd-3.6.0/win/make_gnutls_cert.bat
inspircd-3.6.0/win/modules/
inspircd-3.6.0/win/modules/CMakeLists.txt
inspircd-3.6.0/win/win32service.cpp
inspircd-3.6.0/win/win32service.h
ubuntu@irc:~$ cd /home/ubuntu/inspircd-3.6.0
ubuntu@irc:~/inspircd-3.6.0$ ./configure --disable-interactive --prefix=/home/ubuntu/inspircd-3.6.0/ircd/
Configuring InspIRCd 3.6.0 on linux.
Checking whether `c++` is available ... yes
Checking whether `c++` is compatible ... yes
Checking whether arc4random_buf() is available ... no
Checking whether clock_gettime() is available ... yes
Checking whether eventfd() is available ... yes
Checking whether epoll is available ... yes
Checking whether kqueue is available ... no
Checking whether poll is available ... yes
Enabling m_sslrehashsignal.cpp ...
Enabling m_regex_posix.cpp ...
Warning: You are building without enabling any SSL modules. This is not
recommended as SSL greatly enhances the security and privacy of your IRC server
and in a future version will be required for linking servers.

Please read the following documentation pages on how to enable SSL support:

GnuTLS (recommended): https://docs.inspircd.org/3/modules/ssl_gnutls
mbedTLS:              https://docs.inspircd.org/3/modules/ssl_mbedtls
OpenSSL:              https://docs.inspircd.org/3/modules/ssl_openssl

Creating /home/ubuntu/inspircd-3.6.0/.configure ...
Writing /home/ubuntu/inspircd-3.6.0/.configure/cache.cfg ...
Parsing make/template/bsd.mk ...
Parsing make/template/config.h ...
Writing include/config.h ...
Parsing make/template/inspircd ...
Writing /home/ubuntu/inspircd-3.6.0/.configure/inspircd ...
Parsing make/template/inspircd-genssl.1 ...
Writing /home/ubuntu/inspircd-3.6.0/.configure/inspircd-genssl.1 ...
Parsing make/template/inspircd.1 ...
Writing /home/ubuntu/inspircd-3.6.0/.configure/inspircd.1 ...
Parsing make/template/inspircd.service ...
Writing /home/ubuntu/inspircd-3.6.0/.configure/inspircd.service ...
Parsing make/template/main.mk ...
Writing GNUmakefile ...
Parsing make/template/org.inspircd.plist ...

Configuration is complete! You have chosen to build with the following settings:

Compiler:
  Binary:  c++
  Name:    GCC
  Version: 7.5

Extra Modules:
  * m_regex_posix
  * m_sslrehashsignal

Paths:
  Base:    /home/ubuntu/inspircd-3.6.0/ircd/
  Binary:  /home/ubuntu/inspircd-3.6.0/ircd/bin
  Config:  /home/ubuntu/inspircd-3.6.0/ircd/conf
  Data:    /home/ubuntu/inspircd-3.6.0/ircd/data
  Example: /home/ubuntu/inspircd-3.6.0/ircd/conf/examples
  Log:     /home/ubuntu/inspircd-3.6.0/ircd/logs
  Manual:  /home/ubuntu/inspircd-3.6.0/ircd/manuals
  Module:  /home/ubuntu/inspircd-3.6.0/ircd/modules
  Script:  /home/ubuntu/inspircd-3.6.0/ircd/

Execution Group: ubuntu (1000)
Execution User:  ubuntu (1000)
Socket Engine:   epoll

To build with these settings run 'make -j2 install' now.

ubuntu@irc:~/inspircd-3.6.0$ make -j2 install
*************************************
*       BUILDING INSPIRCD           *
*                                   *
*   This will take a *long* time.   *
*     Why not read our docs at      *
*     https://docs.inspircd.org     *
*  while you wait for Make to run?  *
*************************************
	BUILD:		base.cpp
	BUILD:		bancache.cpp
	BUILD:		channels.cpp
	BUILD:		cidr.cpp
	BUILD:		clientprotocol.cpp
	BUILD:		command_parse.cpp
	BUILD:		commands.cpp
	BUILD:		configparser.cpp
	BUILD:		configreader.cpp
	BUILD:		cull_list.cpp
	BUILD:		dynamic.cpp
	BUILD:		filelogger.cpp
	BUILD:		fileutils.cpp
	BUILD:		hashcomp.cpp
	BUILD:		helperfuncs.cpp
	BUILD:		inspircd.cpp
	BUILD:		inspsocket.cpp
	BUILD:		inspstring.cpp
	BUILD:		listensocket.cpp
	BUILD:		listmode.cpp
	BUILD:		logger.cpp
	BUILD:		mode.cpp
	BUILD:		modulemanager.cpp
	BUILD:		modules.cpp
	BUILD:		serializable.cpp
	BUILD:		server.cpp
	BUILD:		snomasks.cpp
	BUILD:		socket.cpp
	BUILD:		socketengine.cpp
	BUILD:		threadengine.cpp
	BUILD:		timer.cpp
	BUILD:		usermanager.cpp
	BUILD:		users.cpp
	BUILD:		wildcard.cpp
	BUILD:		xline.cpp
	BUILD:		socketengines/socketengine_epoll.cpp
	BUILD:		threadengines/threadengine_pthread.cpp
	BUILD:		coremods/core_channel/cmd_invite.cpp
	BUILD:		coremods/core_channel/cmd_join.cpp
	BUILD:		coremods/core_channel/cmd_kick.cpp
	BUILD:		coremods/core_channel/cmd_names.cpp
	BUILD:		coremods/core_channel/cmd_topic.cpp
	BUILD:		coremods/core_channel/cmode_k.cpp
	BUILD:		coremods/core_channel/cmode_l.cpp
	BUILD:		coremods/core_channel/core_channel.cpp
	BUILD:		coremods/core_channel/invite.cpp
	BUILD:		coremods/core_dns.cpp
	BUILD:		coremods/core_hostname_lookup.cpp
	BUILD:		coremods/core_info/cmd_admin.cpp
	BUILD:		coremods/core_info/cmd_commands.cpp
	BUILD:		coremods/core_info/cmd_info.cpp
	BUILD:		coremods/core_info/cmd_modules.cpp
	BUILD:		coremods/core_info/cmd_motd.cpp
	BUILD:		coremods/core_info/cmd_servlist.cpp
	BUILD:		coremods/core_info/cmd_time.cpp
	BUILD:		coremods/core_info/cmd_version.cpp
	BUILD:		coremods/core_info/core_info.cpp
	BUILD:		coremods/core_list.cpp
	BUILD:		coremods/core_loadmodule.cpp
	BUILD:		coremods/core_lusers.cpp
	BUILD:		coremods/core_message.cpp
	BUILD:		coremods/core_mode.cpp
	BUILD:		coremods/core_oper/cmd_die.cpp
	BUILD:		coremods/core_oper/cmd_kill.cpp
	BUILD:		coremods/core_oper/cmd_oper.cpp
	BUILD:		coremods/core_oper/cmd_rehash.cpp
	BUILD:		coremods/core_oper/cmd_restart.cpp
	BUILD:		coremods/core_oper/core_oper.cpp
	BUILD:		coremods/core_reloadmodule.cpp
	BUILD:		coremods/core_serialize_rfc.cpp
	BUILD:		coremods/core_stats.cpp
	BUILD:		coremods/core_stub.cpp
	BUILD:		coremods/core_user/cmd_away.cpp
	BUILD:		coremods/core_user/cmd_ison.cpp
	BUILD:		coremods/core_user/cmd_nick.cpp
	BUILD:		coremods/core_user/cmd_part.cpp
	BUILD:		coremods/core_user/cmd_quit.cpp
	BUILD:		coremods/core_user/cmd_user.cpp
	BUILD:		coremods/core_user/cmd_userhost.cpp
	BUILD:		coremods/core_user/core_user.cpp
	BUILD:		coremods/core_user/umode_o.cpp
	BUILD:		coremods/core_user/umode_s.cpp
	BUILD:		coremods/core_wallops.cpp
	BUILD:		coremods/core_who.cpp
	BUILD:		coremods/core_whois.cpp
	BUILD:		coremods/core_whowas.cpp
	BUILD:		coremods/core_xline/cmd_eline.cpp
	BUILD:		coremods/core_xline/cmd_gline.cpp
	BUILD:		coremods/core_xline/cmd_kline.cpp
	BUILD:		coremods/core_xline/cmd_qline.cpp
	BUILD:		coremods/core_xline/cmd_zline.cpp
	BUILD:		coremods/core_xline/core_xline.cpp
	BUILD:		modules/m_abbreviation.cpp
	BUILD:		modules/m_alias.cpp
	BUILD:		modules/m_allowinvite.cpp
	BUILD:		modules/m_alltime.cpp
	BUILD:		modules/m_anticaps.cpp
	BUILD:		modules/m_auditorium.cpp
	BUILD:		modules/m_autoop.cpp
	BUILD:		modules/m_banexception.cpp
	BUILD:		modules/m_banredirect.cpp
Using the default bcrypt vendor directory for bcrypt: /home/ubuntu/inspircd-3.6.0/vendor/bcrypt
	BUILD:		modules/m_bcrypt.cpp
	BUILD:		modules/m_blockamsg.cpp
	BUILD:		modules/m_blockcaps.cpp
	BUILD:		modules/m_blockcolor.cpp
	BUILD:		modules/m_botmode.cpp
	BUILD:		modules/m_callerid.cpp
	BUILD:		modules/m_cap.cpp
	BUILD:		modules/m_cban.cpp
	BUILD:		modules/m_censor.cpp
	BUILD:		modules/m_cgiirc.cpp
	BUILD:		modules/m_chancreate.cpp
	BUILD:		modules/m_chanfilter.cpp
	BUILD:		modules/m_chanhistory.cpp
	BUILD:		modules/m_chanlog.cpp
	BUILD:		modules/m_channames.cpp
	BUILD:		modules/m_channelban.cpp
	BUILD:		modules/m_check.cpp
	BUILD:		modules/m_chghost.cpp
	BUILD:		modules/m_chgident.cpp
	BUILD:		modules/m_chgname.cpp
	BUILD:		modules/m_classban.cpp
	BUILD:		modules/m_clearchan.cpp
	BUILD:		modules/m_cloaking.cpp
	BUILD:		modules/m_clones.cpp
	BUILD:		modules/m_codepage.cpp
	BUILD:		modules/m_commonchans.cpp
	BUILD:		modules/m_conn_join.cpp
	BUILD:		modules/m_conn_umodes.cpp
	BUILD:		modules/m_conn_waitpong.cpp
	BUILD:		modules/m_connectban.cpp
	BUILD:		modules/m_connflood.cpp
	BUILD:		modules/m_customprefix.cpp
	BUILD:		modules/m_customtitle.cpp
	BUILD:		modules/m_cycle.cpp
	BUILD:		modules/m_dccallow.cpp
	BUILD:		modules/m_deaf.cpp
	BUILD:		modules/m_delayjoin.cpp
	BUILD:		modules/m_delaymsg.cpp
	BUILD:		modules/m_denychans.cpp
	BUILD:		modules/m_disable.cpp
	BUILD:		modules/m_dnsbl.cpp
	BUILD:		modules/m_exemptchanops.cpp
	BUILD:		modules/m_filter.cpp
	BUILD:		modules/m_flashpolicyd.cpp
	BUILD:		modules/m_gecosban.cpp
	BUILD:		modules/m_geoban.cpp
	BUILD:		modules/m_geoclass.cpp
	BUILD:		modules/m_globalload.cpp
	BUILD:		modules/m_globops.cpp
	BUILD:		modules/m_haproxy.cpp
	BUILD:		modules/m_helpop.cpp
	BUILD:		modules/m_hidechans.cpp
	BUILD:		modules/m_hidelist.cpp
	BUILD:		modules/m_hidemode.cpp
	BUILD:		modules/m_hideoper.cpp
	BUILD:		modules/m_hostchange.cpp
	BUILD:		modules/m_hostcycle.cpp
Using the default http_parser vendor directory for httpd: /home/ubuntu/inspircd-3.6.0/vendor/http_parser
	BUILD:		modules/m_httpd.cpp
	BUILD:		modules/m_httpd_acl.cpp
	BUILD:		modules/m_httpd_config.cpp
	BUILD:		modules/m_httpd_stats.cpp
	BUILD:		modules/m_ident.cpp
	BUILD:		modules/m_inviteexception.cpp
	BUILD:		modules/m_ircv3.cpp
	BUILD:		modules/m_ircv3_accounttag.cpp
	BUILD:		modules/m_ircv3_batch.cpp
	BUILD:		modules/m_ircv3_capnotify.cpp
	BUILD:		modules/m_ircv3_chghost.cpp
	BUILD:		modules/m_ircv3_ctctags.cpp
	BUILD:		modules/m_ircv3_echomessage.cpp
	BUILD:		modules/m_ircv3_invitenotify.cpp
	BUILD:		modules/m_ircv3_labeledresponse.cpp
	BUILD:		modules/m_ircv3_msgid.cpp
	BUILD:		modules/m_ircv3_servertime.cpp
	BUILD:		modules/m_ircv3_sts.cpp
	BUILD:		modules/m_joinflood.cpp
	BUILD:		modules/m_kicknorejoin.cpp
	BUILD:		modules/m_knock.cpp
	BUILD:		modules/m_ldapauth.cpp
	BUILD:		modules/m_ldapoper.cpp
	BUILD:		modules/m_lockserv.cpp
	BUILD:		modules/m_maphide.cpp
	BUILD:		modules/m_md5.cpp
	BUILD:		modules/m_messageflood.cpp
	BUILD:		modules/m_mlock.cpp
	BUILD:		modules/m_modenotice.cpp
	BUILD:		modules/m_monitor.cpp
	BUILD:		modules/m_muteban.cpp
	BUILD:		modules/m_namedmodes.cpp
	BUILD:		modules/m_namesx.cpp
	BUILD:		modules/m_nationalchars.cpp
	BUILD:		modules/m_nickflood.cpp
	BUILD:		modules/m_nicklock.cpp
	BUILD:		modules/m_noctcp.cpp
	BUILD:		modules/m_nokicks.cpp
	BUILD:		modules/m_nonicks.cpp
	BUILD:		modules/m_nonotice.cpp
	BUILD:		modules/m_nopartmsg.cpp
	BUILD:		modules/m_ojoin.cpp
	BUILD:		modules/m_operchans.cpp
	BUILD:		modules/m_operjoin.cpp
	BUILD:		modules/m_operlevels.cpp
	BUILD:		modules/m_operlog.cpp
	BUILD:		modules/m_opermodes.cpp
	BUILD:		modules/m_opermotd.cpp
	BUILD:		modules/m_operprefix.cpp
	BUILD:		modules/m_override.cpp
	BUILD:		modules/m_passforward.cpp
	BUILD:		modules/m_password_hash.cpp
	BUILD:		modules/m_pbkdf2.cpp
	BUILD:		modules/m_permchannels.cpp
	BUILD:		modules/m_randquote.cpp
	BUILD:		modules/m_redirect.cpp
	BUILD:		modules/m_regex_glob.cpp
	BUILD:		modules/m_regex_posix.cpp
	BUILD:		modules/m_remove.cpp
	BUILD:		modules/m_repeat.cpp
	BUILD:		modules/m_restrictchans.cpp
	BUILD:		modules/m_restrictmsg.cpp
	BUILD:		modules/m_rline.cpp
	BUILD:		modules/m_rmode.cpp
	BUILD:		modules/m_sajoin.cpp
	BUILD:		modules/m_sakick.cpp
	BUILD:		modules/m_samode.cpp
	BUILD:		modules/m_sanick.cpp
	BUILD:		modules/m_sapart.cpp
	BUILD:		modules/m_saquit.cpp
	BUILD:		modules/m_sasl.cpp
	BUILD:		modules/m_satopic.cpp
	BUILD:		modules/m_securelist.cpp
	BUILD:		modules/m_seenicks.cpp
	BUILD:		modules/m_serverban.cpp
	BUILD:		modules/m_services_account.cpp
	BUILD:		modules/m_servprotect.cpp
	BUILD:		modules/m_sethost.cpp
	BUILD:		modules/m_setident.cpp
	BUILD:		modules/m_setidle.cpp
	BUILD:		modules/m_setname.cpp
	BUILD:		modules/m_sha1.cpp
Using the default sha2 vendor directory for sha256: /home/ubuntu/inspircd-3.6.0/vendor/sha2
	BUILD:		modules/m_sha256.cpp
	BUILD:		modules/m_showfile.cpp
	BUILD:		modules/m_showwhois.cpp
	BUILD:		modules/m_shun.cpp
	BUILD:		modules/m_silence.cpp
	BUILD:		modules/m_spanningtree/addline.cpp
	BUILD:		modules/m_spanningtree/away.cpp
	BUILD:		modules/m_spanningtree/capab.cpp
	BUILD:		modules/m_spanningtree/compat.cpp
	BUILD:		modules/m_spanningtree/delline.cpp
	BUILD:		modules/m_spanningtree/encap.cpp
	BUILD:		modules/m_spanningtree/fjoin.cpp
	BUILD:		modules/m_spanningtree/fmode.cpp
	BUILD:		modules/m_spanningtree/ftopic.cpp
	BUILD:		modules/m_spanningtree/hmac.cpp
	BUILD:		modules/m_spanningtree/idle.cpp
	BUILD:		modules/m_spanningtree/ijoin.cpp
	BUILD:		modules/m_spanningtree/main.cpp
	BUILD:		modules/m_spanningtree/metadata.cpp
	BUILD:		modules/m_spanningtree/misccommands.cpp
	BUILD:		modules/m_spanningtree/netburst.cpp
	BUILD:		modules/m_spanningtree/nick.cpp
	BUILD:		modules/m_spanningtree/nickcollide.cpp
	BUILD:		modules/m_spanningtree/num.cpp
	BUILD:		modules/m_spanningtree/opertype.cpp
	BUILD:		modules/m_spanningtree/override_map.cpp
	BUILD:		modules/m_spanningtree/override_squit.cpp
	BUILD:		modules/m_spanningtree/override_stats.cpp
	BUILD:		modules/m_spanningtree/override_whois.cpp
	BUILD:		modules/m_spanningtree/ping.cpp
	BUILD:		modules/m_spanningtree/pingtimer.cpp
	BUILD:		modules/m_spanningtree/pong.cpp
	BUILD:		modules/m_spanningtree/postcommand.cpp
	BUILD:		modules/m_spanningtree/precommand.cpp
	BUILD:		modules/m_spanningtree/protocolinterface.cpp
	BUILD:		modules/m_spanningtree/rconnect.cpp
	BUILD:		modules/m_spanningtree/remoteuser.cpp
	BUILD:		modules/m_spanningtree/resolvers.cpp
	BUILD:		modules/m_spanningtree/rsquit.cpp
	BUILD:		modules/m_spanningtree/save.cpp
	BUILD:		modules/m_spanningtree/server.cpp
	BUILD:		modules/m_spanningtree/servercommand.cpp
	BUILD:		modules/m_spanningtree/sinfo.cpp
	BUILD:		modules/m_spanningtree/svsjoin.cpp
	BUILD:		modules/m_spanningtree/svsnick.cpp
	BUILD:		modules/m_spanningtree/svspart.cpp
	BUILD:		modules/m_spanningtree/tags.cpp
	BUILD:		modules/m_spanningtree/translate.cpp
	BUILD:		modules/m_spanningtree/treeserver.cpp
	BUILD:		modules/m_spanningtree/treesocket1.cpp
	BUILD:		modules/m_spanningtree/treesocket2.cpp
	BUILD:		modules/m_spanningtree/uid.cpp
	BUILD:		modules/m_spanningtree/utils.cpp
	BUILD:		modules/m_sqlauth.cpp
	BUILD:		modules/m_sqloper.cpp
	BUILD:		modules/m_sslinfo.cpp
	BUILD:		modules/m_sslmodes.cpp
	BUILD:		modules/m_sslrehashsignal.cpp
	BUILD:		modules/m_starttls.cpp
	BUILD:		modules/m_stripcolor.cpp
	BUILD:		modules/m_svshold.cpp
	BUILD:		modules/m_swhois.cpp
	BUILD:		modules/m_timedbans.cpp
	BUILD:		modules/m_tline.cpp
	BUILD:		modules/m_topiclock.cpp
	BUILD:		modules/m_uhnames.cpp
	BUILD:		modules/m_uninvite.cpp
	BUILD:		modules/m_userip.cpp
	BUILD:		modules/m_vhost.cpp
	BUILD:		modules/m_watch.cpp
Using the default utfcpp vendor directory for websocket: /home/ubuntu/inspircd-3.6.0/vendor/utfcpp
	BUILD:		modules/m_websocket.cpp
	BUILD:		modules/m_xline_db.cpp
	LINK:		bin/inspircd
	LINK:		modules/core_channel.so
	LINK:		modules/core_info.so
	LINK:		modules/core_oper.so
	LINK:		modules/core_user.so
	LINK:		modules/core_xline.so
	LINK:		modules/m_spanningtree.so

*************************************
*        INSTALL COMPLETE!          *
*************************************
Paths:
  Base install: /home/ubuntu/inspircd-3.6.0/ircd/
  Configuration: /home/ubuntu/inspircd-3.6.0/ircd/conf
  Binaries: /home/ubuntu/inspircd-3.6.0/ircd/bin
  Modules: /home/ubuntu/inspircd-3.6.0/ircd/modules
  Data: /home/ubuntu/inspircd-3.6.0/ircd/data
To start the ircd, run: /home/ubuntu/inspircd-3.6.0/ircd//inspircd start
Remember to create your config file: /home/ubuntu/inspircd-3.6.0/ircd/conf/inspircd.conf
Examples are available at: /home/ubuntu/inspircd-3.6.0/ircd/conf/examples
ubuntu@irc:~/inspircd-3.6.0$ cd ircd/conf/examples/
ubuntu@irc:~/inspircd-3.6.0/ircd/conf/examples$ ls
codepages            helpop.conf.example    links.conf.example    motd.txt.example      opers.conf.example  quotes.txt.example  sql
filter.conf.example  inspircd.conf.example  modules.conf.example  opermotd.txt.example  providers           services
ubuntu@irc:~/inspircd-3.6.0/ircd/conf/examples$ nano inspircd.conf.example

  GNU nano 2.9.3                                                    inspircd.conf.example

             # which makes it easier for opers, but degrades the functionality of
             # bots like BOPM during netsplits.
             quietbursts="yes">

#-#-#-#-#-#-#-#-#-#-#-# SECURITY CONFIGURATION  #-#-#-#-#-#-#-#-#-#-#-#
#                                                                     #

<security
          # allowcoreunload: If this value is set to yes, Opers will be able to
          # unload core modules (e.g. core_privmsg).
          allowcoreunload="no"

          # announceinvites: This option controls which members of the channel
          # receive an announcement when someone is INVITEd. Available values:
          # 'none' - don't send invite announcements
          # 'all' - send invite announcements to all members
          # 'ops' - send invite announcements to ops and higher ranked users
          # 'dynamic' - send invite announcements to halfops (if available) and
          #             higher ranked users. This is the recommended setting.
          announceinvites="dynamic"

          # hideulines: If this value is set to yes, U-lined servers will
          # be hidden from non-opers in /LINKS and /MAP.
          hideulines="no"

          # flatlinks: If this value is set to yes, /MAP and /LINKS will
          # be flattened when shown to non-opers.
          flatlinks="no"

          # hideserver: When defined, the given text will be used in place

^G Get Help     ^O Write Out    ^W Where Is     ^K Cut Text     ^J Justify      ^C Cur Pos      M-U Undo        M-A Mark Text   M-] To Bracket
^X Exit         ^R Read File    ^\ Replace      ^U Uncut Text   ^T To Spell     ^_ Go To Line   M-E Redo        M-6 Copy Text   M-W WhereIs Next

    chown -R inspircd /conf/
