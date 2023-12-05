#!/bin/bash

# Pedir al usuario dos números
read -p "Ingrese el primer número: " num1
read -p "Ingrese el segundo número: " num2

# Verificar si los valores ingresados son números
if [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; then
    # Comparar los números
    if [ $num1 -eq $num2 ]; then
        echo "Los números son iguales."
    elif [ $num1 -gt $num2 ]; then
        echo "El primer número ($num1) es mayor que el segundo número ($num2)."
    else
        echo "El segundo número ($num2) es mayor que el primer número ($num1)."
    fi
else
    echo "Error: Ingresa dos valores numéricos válidos."
fi