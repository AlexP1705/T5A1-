#!/bin/bash

# Pedir al usuario la cantidad de números aleatorios
echo "Ingrese la cantidad de números aleatorios que desea generar: "
read cantidad

# Verificar si el valor ingresado es un número mayor que 0
if ! [[ $cantidad =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Ingresa una cantidad válida mayor que 0."
    exit 1
fi

# Pedir al usuario el valor mínimo
echo "Ingrese el valor mínimo: "
read minimo

# Pedir al usuario el valor máximo
echo "Ingrese el valor máximo: "
read maximo

# Verificar si los valores ingresados son números
if ! [[ $minimo =~ ^[0-9]+$ ]] || ! [[ $maximo =~ ^[0-9]+$ ]]; then
    echo "Error: Ingresa valores mínimos y máximos válidos."
    exit 1
fi

# Verificar si el valor máximo es mayor que el valor mínimo
if [ $maximo -le $minimo ]; then
    echo "Error: El valor máximo debe ser mayor que el valor mínimo."
    exit 1
fi

# Generar y mostrar los números aleatorios
echo "Números aleatorios generados:"
for ((i = 0; i < cantidad; i++)); do
    numero=$((RANDOM % (maximo - minimo + 1) + minimo))
    echo $numero
done