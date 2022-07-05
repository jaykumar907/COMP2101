#!/bin/bash
# Virtual web server

# installing lxd 
sudo snap install lxd

# checking lxdbr0 is persent or not
ip addr

# initiating lxd
lxd init --auto

# checking wheather container COMP2101-S22 exists or not
sudo lxc list

# if COMP2101-S22 is not present or created run ==> sudo lxc-create -n COMP2101-S22 -t ubuntu

# creating / runnning the container COMP2101-S22
lxc launch ubuntu:20.04 COMP2101-S22

# finding ip address of container
lxc list | awk '/COMP2101-S22/ {print $6}'

# installing apache 2
lxc exec COMP2101-S22 -- apt install apache2


#retrieve web page
curl http://COMP2101-S22 && echo 'success' || echo 'failure'

exit
