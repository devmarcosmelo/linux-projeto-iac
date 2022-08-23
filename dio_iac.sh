#/bin/bash

echo "Início do script de Iac Dio Boot Camp Linux Experience"

echo "Criando os diretórios"

mkdir /iac

cd /iac

mkdir publico

mkdir adm

mkdir ven

mkdir sec


echo "Criando os Grupos"

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC


echo "Criando os usuários"

###$user

useradd carlos -c "Carlos Cunha" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_ADM
passwd carlos -e

useradd maria -c "Maria da Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_ADM
passwd maria -e

useradd joao -c "João Pedro" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_ADM
passwd joao -e

useradd debora -c "Débora Dias" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Gomes" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Araújo" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Sougelis" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério Shineider" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -g GRP_SEC
passwd rogerio -e

echo "modificando as permissões de grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo"Modificando permissões de usuários a grupos"

chmod 777 /iac/publico
chmod 770 /iac/adm
chmod 770 /iac/ven
chmod 770 /iac/sec

$date=date
echo $date

echo"Fim do scrip"
