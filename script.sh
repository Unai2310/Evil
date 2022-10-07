#!/bin/bash
clear
echo "***********************************"
echo "***********************************"
echo "**********PROCCESS KILLER**********"
echo "***********************************"
echo "***********************************"
echo cf82e6906833da516865a0f0f9cd2a5d > contraseña.txt
contra=$(cat contraseña.txt | cut -c 1-32) 
echo -n Introduce la contraseña:
read -s usu
echo ""
usupass=$(echo $usu | md5sum | cut -c 1-32)
while [ "$usupass" != "$contra" ]; do
	echo -n Credenciales incorrectas. Intentelo de nuevo: 
	read -s usupass
	echo ""
done
clear
echo Bienvenido
echo -n Escribe el PID del proceso que quieres eliminar





















