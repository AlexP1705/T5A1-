#!/bin/bash

while true; do
    # Pedir al usuario un valor mayor que 0
    read -p "Introduce un valor mayor que 0: " valor

    # Verificar si el valor es un número mayor que 0
    if [[ $valor =~ ^[1-9][0-9]*$ ]]; then
        # Verificar si el valor es par o impar
        if [ $((valor % 2)) -eq 0 ]; then
            echo "El valor $valor es par."
        else
            echo "El valor $valor es impar."
        fi
        break
    else
        echo "Error: Ingresa un valor válido mayor que 0."
    fi
done