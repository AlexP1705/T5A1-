#!/bin/bash

# Verificar si se ha pasado un argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <ruta_del_fichero>"
    exit 1
fi

# Obtener la ruta del fichero desde el argumento
ruta_fichero=$1

# Indicar si el fichero existe o no
if [ -e "$ruta_fichero" ]; then
    echo "El fichero existe."
    
    # Mostrar información adicional si el fichero existe
    if [ -d "$ruta_fichero" ]; then
        echo "Tipo de fichero: Directorio"
    elif [ -f "$ruta_fichero" ]; then
        echo "Tipo de fichero: Fichero regular"
    elif [ -h "$ruta_fichero" ]; then
        echo "Tipo de fichero: Enlace simbólico"
    else
        echo "Tipo de fichero: Desconocido"
    fi

    # Mostrar permisos del usuario
    echo "Permisos del usuario: $(stat -c %A "$ruta_fichero")"

    # Verificar si el usuario es el propietario del archivo
    if [ -O "$ruta_fichero" ]; then
        echo "El usuario es el propietario del archivo."
    else
        echo "El usuario no es el propietario del archivo."
    fi

    # Verificar si el fichero está vacío
    if [ -s "$ruta_fichero" ]; then
        echo "El fichero no está vacío."
    else
        echo "El fichero está vacío."
    fi

else
    echo "El fichero no existe."
fi