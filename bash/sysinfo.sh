#!/bin/bash
# this script prints out my system info

# printing hostname
echo 'Report for ' $HOSTNAME 

echo ''
echo '===================='
echo ''

#printing domain name, prints blank if no domain name is present
echo "FQDN:"  $(hostname --fqdn) 
echo ''

# using head command to print first line of output /etc/os-release to print os name and version
echo 'Operating System name and version:' $(head -n 1 /etc/os-release)
echo ''

# printing ip address
echo 'IP Addresses:' $(hostname -I)
echo ''

# getting root file system info
echo 'Root Filesystem Free Space:'  $(df -h)
echo ''
 
echo '===================='
echo ''
exit

 
