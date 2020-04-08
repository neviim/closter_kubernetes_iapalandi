#!/bin/sh

hostname=$1

ip=$2   # formato: 192.168.0.43
dns=$3  # formato: 192.168.0.1

# altera o nome do host
sudo hostnamectl --transient set-hostname $hostname
sudo hostnamectl --static set-hostname $hostname
sudo hostnamectl --pretty set-hostname $hostname

# # Set o static ip

# sudo cat <<EOT >> /etc/dhcpcd.conf
# interface eth0
# static ip_address=$ip/24
# static routers=$dns
# static domain_name_servers=$dns
# EOT

