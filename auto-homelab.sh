#What script do we want?
#Automatic and easy deployment for selfhosted services

#We start as usual with a shebang

#!/bin/bash

#First we need to define some stuff and since we want to flex with bash we try to ask as much within bash as possible
#But for the very first we need some tools or dependencies and such

sudo apt update && sudo apt install -y nfs-kernel-server docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "System updated - NFS server and Docker are running successfully"


############################
#######DieSchoeneWolke######
############################

#Ask for docker volume path
#echo "Enter docker volume path:"
#read volume_path








##############################
#CADDY SECTION

#Ask for Caddyfile path
echo "Enter Caddyfile path:"
read caddyfile_path

#Ask for IP
echo "Enter ip:"
read ip

#Ask for Domain
echo "Enter Domain:"
read domain

#Ask for port number and add it to Caddyfile
echo "Enter port number:"
read port_number

echo "$domain { 
encode gzip 
reverse_proxy $ip:$port_number }" >> "$caddyfile_path"
