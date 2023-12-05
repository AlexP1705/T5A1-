#!/bin/bash

# Pedir al usuario la cantidad de litros de agua consumidos
echo "Ingrese la cantidad de litros de agua consumidos: "
read litros

# Verificar si el valor ingresado es un número mayor que 0
if ! [[ $litros =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Ingresa una cantidad válida mayor que 0."
    exit 1
fi

# Calcular el coste total según las indicaciones
if [ $litros -le 50 ]; then
    costo_total=20
elif [ $litros -le 200 ]; then
    costo_total=$(awk "BEGIN {printf \"%.2f\", 20 + ($litros - 50) * 0.20}")
else
    costo_total=$(awk "BEGIN {printf \"%.2f\", 20 + 150 * 0.20 + ($litros - 200) * 0.10}")
fi

# Mostrar el coste total
echo "El coste total es de $costo_total euros."
