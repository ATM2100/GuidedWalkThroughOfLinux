# How to deploy the Guided Walkthrough of Linux

## Who is this for?
This guide is designed specifically to match my teaching style and personality. This guide is designed in such a way that I can set up a virtual machine or let someone borrow a computer quickly and expect them to be familiar with how to use the Linux CLI by the end. Anyone can use this guide, but it is designed in such a way that there are at least two people involved. There is one person that can set up the Linux environments and one or more people using the Linux environment with the guide to learn the basics. The guide is designed for people who want to learn the basics of Linux in a controlled environment. If the guide is mandatory for a grade, the guide will probably not work as well. 

## How to deploy the machine
It is assumed that you know how to set up Linux on your machine, either on bare metal or on a hypervisor. When I set up the testing environments, I chose to have the following settings on Debian 12.6-8.X:
```
hostname -> host
domain name -> host
root password -> toor
user -> user
user password -> user
User interfaces -> none
system tools -> yes
```

After booting into the machine, log into root and install the following:
```
sudo
vim
nano
tree
git
```

Clone this repository onto that machine. Move the `/GuidedWalkThroughOfLinux/exercises` to the home directory. Double check that you correctly cloned the repository as `user`, because it'll mess up permissions if you do it as root. Delete the repository with `rm -rf`. Last step is to clear the history of both user and root with `history -c`. To shutdown the environment run `/sbin/shutdown -h now` as root. After restarting, you should have a prepped environment.

