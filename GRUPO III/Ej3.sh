#!/bin/bash

# Inicializar un array para almacenar las palabras
palabras=()

# Pedir al usuario palabras hasta que ingrese "fin"
while true; do
    read -p "Introduce una palabra (escribe 'fin' para finalizar): " palabra

    # Verificar si el usuario ha ingresado "fin" para salir del bucle
    if [ "$palabra" == "fin" ]; then
        break
    fi

    # Agregar la palabra al array
    palabras+=("$palabra")
done

# Mostrar la cantidad de palabras introducidas
cantidad_palabras=${#palabras[@]}
echo "Se han introducido $cantidad_palabras palabras."

# Mostrar las palabras ordenadas alfabéticamente
echo "Palabras ordenadas alfabéticamente:"
IFS=$'\n' sorted=($(sort <<<"${palabras[*]}"))
unset IFS
for palabra in "${sorted[@]}"; do
    echo "$palabra"
done