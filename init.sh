#!/bin/sh

# # Install Docker
# sudo apt install docker.io -y && \
#     sudo usermod neviim -aG docker 

# sudo systemctl start docker
# sudo systemctl enable docker

# docker --version

# Erro =========================================
# Setup daemon.
# sudo cat > /etc/docker/daemon.json << 
# {
#   "exec-opts": ["native.cgroupdriver=systemd"],
#   "log-driver": "json-file",
#   "log-opts": {
#     "max-size": "100m"
#     },
#     "storage-driver": "overlay2"
# }
# ================================================

# cria diretorio
sudo mkdir -p /etc/systemd/system/docker.service.d

# Restart docker.
sudo systemctl daemon-reload
sudo systemctl restart docker

# Transport https
sudo apt install apt-transport-https curl -y

# add Kubernetes package repository key
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# configure Kubernetes repository
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt update -q 

# disable swap temporary,
sudo swapoff -a

# Install Kubeadm package
sudo apt install kubeadm -qy

kubeadm version

# install the parts we need for Kubernetes
sudo apt install -qy kubelet kubectl kubernetes-cni

# Reboot sistema
sudo reboot






# # Disable Swap
# sudo dphys-swapfile swapoff && \
#   sudo dphys-swapfile uninstall && \
#   sudo update-rc.d dphys-swapfile remove
# echo Adding " cgroup_enable=cpuset cgroup_enable=memory" to /boot/cmdline.txt
# sudo cp /boot/cmdline.txt /boot/cmdline_backup.txt

# # if you encounter problems, try changing cgroup_memory=1 to cgroup_enable=memory.
# orig="$(head -n1 /boot/cmdline.txt) cgroup_enable=cpuset cgroup_memory=1"
# echo $orig | sudo tee /boot/cmdline.txt





