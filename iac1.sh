#!/bin/bash

echo "INICIANDO EXECUÇÃO DO SCRIPT"

echo "Criando diretórios....."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Fim da criação de diretórios!"

echo "Criando grupos de usuários....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Fim da criação de grupos de usuários!"

echo "Criando usuários e definindo seus grupos de trabalho....."

useradd carlos -c "Carlos Magno" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_ADM
useradd maria -c "Maria Júlia" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_ADM
useradd joao -c "João Pedro" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_ADM

useradd debora -c "Débora Lee" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_VEN
useradd sebastiana -c "Sebastiana Azevedo" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_VEN
useradd roberto -c "Roberto Robertus" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_VEN

useradd josefina -c "Josefina Jackson" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_SEC
useradd amanda -c "Amanda Guimarães" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_SEC
useradd rogerio -c "Rogério Pablo" -m -s /bin/bash -p $(openssl passwd -6 senha1234) -G GRP_SEC

echo "Fim da criação de usuários e definição de seus grupos de trabalho!"

echo "Especificando permissões dos usuários....."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim das especificações de permissões dos usuários!"

echo "EXECUÇÃO DO SCRIPT FINALIZADA"

