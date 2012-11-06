#!/bin/bash

var=${1:?"Se necesita grupo"}

var=$(egrep "^$var" /etc/group)

if [[ $var ]]; then
	echo -e "Existe el Grupo $1 \n :P "
else
	echo -e "No existe el grupo $1 \n :S "
fi
