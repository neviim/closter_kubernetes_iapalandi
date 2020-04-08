# closter_kubernetes_iapalandi

    Closter kubernetes tres macmini, sistema ubuntu 18.04 
    Homeassistant com demais serviços para - altomação 
    residencial sistema iaPlandi.


# inicialisando e preparando o ambiente 

  $ ssh neviim@server.lan

  $ vim hostname_config.sh


# server: 192.168.0.43

  $ sh hostname_config.sh server 192.168.0.43 192.168.0.1

# nodes-01: 192.168.0.44

	$ sh hostname_config.sh nodes-01 192.168.0.44 192.168.0.1

# nodes-02: 192.168.0.45

	$ sh hostname_config.sh nodes-02 192.168.0.45 192.168.0.1