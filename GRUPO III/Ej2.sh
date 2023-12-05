#!/bin/bash

while true; do
    # Pedir al usuario una nota
    read -p "Ingrese la nota (0-10): " nota

    # Verificar si el valor es un número entre 0 y 10
    if [[ $nota =~ ^[0-9](\.[0-9])?$ && $nota -ge 0 && $nota -le 10 ]]; then
        # Asignar la calificación correspondiente
        if (( $(awk -v nota="$nota" 'BEGIN { print (nota < 5) }') )); then
            echo "Calificación: Suspendido"
        elif (( $(awk -v nota="$nota" 'BEGIN { print (nota < 6) }') )); then
            echo "Calificación: Aprobado"
        elif (( $(awk -v nota="$nota" 'BEGIN { print (nota < 7) }') )); then
            echo "Calificación: Bien"
        elif (( $(awk -v nota="$nota" 'BEGIN { print (nota < 9) }') )); then
            echo "Calificación: Notable"
        else
            echo "Calificación: Sobresaliente"
        fi
        break
    else
        echo "Error: Ingresa una nota válida entre 0 y 10."
    fi
done