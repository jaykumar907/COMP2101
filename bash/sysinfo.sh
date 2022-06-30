#!/bin/bash
# this script prints out my system info

# printing hostname
echo 'Host Name :' 
hostname

#printing domain name, prints blank if no domain name is present
echo 'Domain Name :' 
domainname -a

# using head command to print first line of output /etc/os-release to print os name and version
echo Operating System name and version :
head -n 1 /etc/os-release

# printing ip address
echo 'IP Addresses :' 
hostname -I

# getting root file system info
echo Root File System Status:
df -h
 
exit

 
