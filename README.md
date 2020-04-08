# closter_kubernetes_iapalandi

    Closter kubernetes tres macmini, sistema ubuntu 18.04 
    Homeassistant com demais serviços para - altomação 
    residencial sistema iaPlandi.


# inicialisando e preparando o ambiente 

  $ ssh neviim@server.lan

# $ sudo kubeadm init --config ./config/kubeadm_conf.yaml
# $ sudo kubeadm config migrate --old-config ./config/kubeadm_conf.yaml --new-config ./config/kubeadm_upgrade_conf.yaml
	$ sudo kubeadm init

	

# server: 192.168.0.43

  $ sh hostname_config.sh server 192.168.0.43 192.168.0.1

# nodes-01: 192.168.0.44

	$ sh hostname_config.sh nodes-01 192.168.0.44 192.168.0.1

# nodes-02: 192.168.0.45

	$ sh hostname_config.sh nodes-02 192.168.0.45 192.168.0.1




# kubeadm install retorno:
	To start using your cluster, you need to run the following as a regular user:

		$ mkdir -p $HOME/.kube
		$ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
		$ sudo chown $(id -u):$(id -g) $HOME/.kube/config

	You should now deploy a pod network to the cluster.
	Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
		  https://kubernetes.io/docs/concepts/cluster-administration/addons/

	Then you can join any number of worker nodes by running the following on each as root:

	$ kubeadm join 192.168.0.43:6443 --token eky6dn.szlebqlzyqktab9e \
			--discovery-token-ca-cert-hash sha256:bc875a3631d78d21e29036f129c24e7cfb08ab653331fd2c07a84c7b1fb10d51 


# Referencias
	https://kubecloud.io/setup-a-kubernetes-1-9-0-raspberry-pi-cluster-on-raspbian-using-kubeadm-f8b3b85bc2d1