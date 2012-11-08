#!/bin/bash

############################################################################ 
 # Copyright 2012 Sound-Alchemist <sound-alchemist@alchemy-Satellite-L645D>
 # 
 # This program is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
 # the Free Software Foundation; either version 2 of the License, or
 # (at your option) any later version.
 # 
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 # 
 # You should have received a copy of the GNU General Public License
 # along with this program; if not, write to the Free Software
 # Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 # MA 02110-1301, USA.
 #  
 ############################################################################


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
