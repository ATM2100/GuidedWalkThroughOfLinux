#! /bin/bash

apt install vim
apt install nano
apt install tree
apt install sudo

mv /home/user/GuidedWalkThroughOfLinux/exercises /home/user
cd /home/user
rm -rf /home/user/GuidedWalkThroughOfLinux
history -c

su - user
history -c 

su - root
/sbin/shutdown -h 0