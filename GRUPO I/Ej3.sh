#!/bin/bash

# Verificar si se ha pasado un argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <valor>"
    exit 1
fi

# Obtener el valor del argumento
valor=$1

# Verificar si el valor es un número mayor que 0
if [[ $valor =~ ^[1-9][0-9]*$ ]]; then
    # Mostrar el listado de números desde 0 hasta el valor
    for ((i = 0; i <= valor; i++)); do
        echo $i
    done
else
    echo "Error: Ingresa un valor válido mayor que 0."
    exit 1
fi