#!/bin/bash

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
