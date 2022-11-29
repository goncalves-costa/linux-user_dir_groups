#!/bin/bash

echo 'Criando diretorios'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 'Diretorios Criados!'

echo 'Criando Usuarios'

useradd carlos -m -c 'Carlos' -p$(openssl passwd 123) -s /bin/bash
useradd maria -m -c 'Maria' -p$(openssl passwd 123) -s /bin/bash
useradd joao -m -c 'Joao' -p$(openssl passwd 123) -s /bin/bash

useradd debora -m -c 'Debora' -p$(openssl passwd 123) -s /bin/bash
useradd sebastiana -m -c 'Sebastiana' -p$(openssl passwd 123) -s /bin/bash
useradd roberto -m -c 'Roberto' -p$(openssl passwd 123) -s /bin/bash

useradd josefina -m -c 'Josefina' -p$(openssl passwd 123) -s /bin/bash
useradd amanda -m -c 'Amanda' -p$(openssl passwd 123) -s /bin/bash
useradd rogerio -m -c 'Rogerio' -p$(openssl passwd 123) -s /bin/bash

echo 'Usuarios Criados'

echo 'Criando Grupos'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'Grupos Criados'

echo 'Mudando donos e grupos dos diretorios'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo 'Mudancas feitas'

echo 'Mudando permissoes'

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo 'Permissoes mudadas'

echo 'Colocando cada usuario em seu grupo'

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo  'Usuarios em seus grupos!' 
