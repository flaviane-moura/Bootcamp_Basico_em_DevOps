#!/bin/bash

echo "Criando usuários..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."

sudo useradd carlos -c "Carlos Magno" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -c "Maria José" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd joao -c "João Augusto" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

sudo useradd debora -c "Debora da Silveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana Felício" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd roberto -c "Roberto Moura" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

sudo useradd josefina -c "Josefina Alana" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd amanda -c "Amanda Orlando" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd rogerio -c "Rogerio Lafonte" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Atribuindo permissões..."

sudo chown root:root /publico
sudo chmod 777 /publico

sudo chown root:GRP_ADM /adm
sudo chmod 770 /adm

sudo chown root:GRP_VEN /ven
sudo chmod 770 /ven

sudo chown root:GRP_SEC /sec
sudo chmod 770 /sec

echo "Finalizando..."