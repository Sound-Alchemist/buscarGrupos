# Busqueda de Grupos y Usuarios

## Motivacion 

Crear un comando que  permita saber la existencia de un grupo o usuario

## Referencias
Se basa en getopts en el cual permite cambiar las referencias de busqueda
su sintaxis es la siguiente:

    ```.sh 
	busca-ug [opciones*] [opc_busqueda]
    ```
	*opciones - Permiten definir un modo de busqueda es opcional
	    *-o - Permite seleccionar que se esta bsucando
		*u - Busca especificamente usuarios
		*g - Busca especificamente grupos
		 
	    *-s - Permite la busqueda en tanto en grupos como usuarios
