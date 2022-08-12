#!/bin/bash

echo "INICIALIZANDO CRIAÇÃO DE USUÁRIOS CONVIDADOS....."

echo "Criação de Usuário Convidado 1 iniciada..."
useradd user01 -c "Usuário Convidado 1" -s /bin/bash -m -p $(openssl passwd -6 senha1234)
passwd user01 -e
echo "Finalizada criação de Usuário Convidado 1!!"

echo "Criação de Usuário Convidado 2 iniciada..."
useradd user02 -c "Usuário Convidado 2" -s /bin/bash -m -p $(openssl passwd -6 senha1234)
passwd user02 -e
echo "Finalizada criação de Usuário Convidado 2!!"

echo "Criação de Usuário Convidado 3 iniciada..."
useradd user03 -c "Usuário Convidado 3" -s /bin/bash -m -p $(openssl passwd -6 senha1234)
passwd user03 -e
echo "Finalizada criação de Usuário Convidado 3!!"

echo "Criação de Usuário Convidado 4 iniciada..."
useradd user04 -c "Usuário Convidado 4" -s /bin/bash -m -p $(openssl passwd -6 senha1234)
passwd user04 -e
echo "Finalizada criação de Usuário Convidado 4!!"

echo "SCRIPT DE CRIAÇÃO DE USUÁRIOS CONVIDADOS FINALIZADO!!"
