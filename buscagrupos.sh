#!/bin/bash
var=$(egrep "^$1" /etc/group)

if [[ $var ]]; then
	echo "Existe el Grupo :P "$1
else
	echo "No existe el grupo :S"$1
fi

#cat /etc/group | egrep '\busers'
#cat /etc/group | egrep '^users'
#variable=$(egrep '^user' /etc/group)

#grupo=$(cat /etc/group | egrep 'b'$1':' )

#if [[ $grupo ]]; then
#	echo "Existe Grupo: "$1
#else
#	echo "No existe grupo: "$1
#if

