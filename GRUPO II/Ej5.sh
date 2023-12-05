#!/bin/bash

# Verificar si se proporciona la cantidad correcta de argumentos
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "Uso: micat [-r] <ruta_del_fichero>"
    exit 1
fi

# Verificar si se proporciona el parámetro -r
if [ "$1" == "-r" ]; then
    if [ $# -eq 1 ]; then
        echo "Uso: micat [-r] <ruta_del_fichero>"
        exit 1
    fi
    # Mostrar el fichero de fin a principio
    tac "$2" 2>/dev/null || echo "El fichero no existe."
else
    # Mostrar el fichero de principio a fin
    cat "$1" 2>/dev/null || echo "El fichero no existe."
fi