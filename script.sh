#!/bin/bash
clear
echo "***********************************"
echo "***********************************"
echo "**********PROCCESS KILLER**********"
echo "***********************************"
echo "***********************************"
echo 916f4c31aaa35d6b867dae9a7f54270d > contraseña.txt
contra=$(cat contraseña.txt | cut -c 1-32) 
echo -n Introduce la contraseña:
read -s usu
echo ""
usupass=$(echo $usu | md5sum | cut -c 1-32)
echo $usupass
while [ "$usupass" != "$contra" ]; do
	echo -n Credenciales incorrectas. Intentelo de nuevo: 
	read -s usupass
	echo ""
done
clear
echo Bienvenido
echo -n Escribe el nombre del proceso que quieres eliminar: 
read opcion
pkill $opcion
echo Proceso Eliminado
exit

