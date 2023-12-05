#!/bin/bash

# Verificar si se ha proporcionado un argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <valor>"
    exit 1
fi

# Verificar si el argumento es un número mayor que 0
if ! [[ $1 =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: El valor debe ser un número entero mayor que 0."
    exit 1
fi

# Obtener el valor del argumento
valor=$1

# Verificar si el valor es par o impar
if [ $((valor % 2)) -eq 0 ]; then
    echo "El valor $valor es par."
else
    echo "El valor $valor es impar."
fi