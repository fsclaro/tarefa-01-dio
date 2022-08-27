#!/bin/bash

# criação dos diretórios
mkdir public
mkdir adm
mkdir ven
mkdir sec

# define o dono dos diretórios
chown root:root public adm ven sec

# criação dos grupos
sudo groupadd grp_adm
sudo groupadd grp_ven
sudo groupadd grp_sec

# criação dos usuários
sudo useradd carlos -G grp_adm
sudo useradd maria -G grp_adm
sudo useradd joao -G grp_adm

sudo useradd debora -G grp_ven
sudo useradd sebastiana -G grp_ven
sudo useradd roberto -G grp_ven

sudo useradd josefina -G grp_sec
sudo useradd amanada -G grp_sec
sudo useradd rogerio -G grp_sec

# altera permissões dos diretórios
sudo chmod 777 public
sudo chmod 770 adm ven sec

# altera grupos das pastas
sudo chown root:grp_adm adm
sudo chown root:grp_sec sec
sudo chown root:grp_ven ven
