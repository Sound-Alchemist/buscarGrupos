#!/bin/bash



while getopts ":?" opt; do
	case $opt in
	a) 
		echo " Buscando $a"
	;;
	b)
		echo " Buscando en Grupos y Usuario"
		;;
	\?)
		echo "Opcion no valida">&2
		exit 1	
		;;
	:)
		echo "Necesita un parametro">&2
		exit 1
		;;
	esac
done


var=${1:?"Se necesita grupo"}

busqueda=${2:-"usuario"}

if [[ $busqueda == "usuario" ]]; then
	archivo="/etc/passwd"
else
	archivo="/etc/group"
fi

var=$(egrep "^$var" ${archivo})

if [[ $var ]]; then
	echo -e "Existe el Grupo $1 \n :P "
else
	echo -e "No existe el grupo $1 \n :S "
fi
