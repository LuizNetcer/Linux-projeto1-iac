
#!/bin/bash
echo "Criando diretorios!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando users"

useradd Carlos -m -s /bin/bash -G GRP_ADM
passwd Carlos
useradd Maria -m -s /bin/bash -G GRP_ADM
passwd Maria
useradd Joao -m -s /bin/bash -G GRP_ADM
passwd Joao

useradd Debora -m -s /bin/bash -G GRP_VEN
passwd Debora
useradd Sebastiao -m -s /bin/bash -G GRP_VEN
passwd Sebastiao
useradd Roberto -m -s /bin/bash -G GRP_VEN
passwd Roberto

useradd Josefina -m -s /bin/bash -G GRP_SEC
passwd Josefina
useradd Amanda -m -s /bin/bash -G GRP_SEC
passwd Amanda
useradd Rogerio -m -s /bin/bash -G GRP_SEC
passwd Rogerio

echo "definindo permissoes de diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim"




