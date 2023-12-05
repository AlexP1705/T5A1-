#!/bin/bash

while true; do
    # Pedir al usuario un valor del día numérico del mes
    read -p "Introduce un valor del día numérico del mes (1-30): " dia

    # Verificar si el valor está en el rango de 1 a 30
    if [[ $dia =~ ^[1-9]$|^1[0-9]$|^30$ ]]; then
        # Calcular el día de la semana asumiendo que el día 1 es lunes
        dia_semana=$(( (dia - 1) % 7))

        # Mostrar el día de la semana
        case $dia_semana in
            0) echo "El día $dia corresponde a lunes." ;;
            1) echo "El día $dia corresponde a martes." ;;
            2) echo "El día $dia corresponde a miércoles." ;;
            3) echo "El día $dia corresponde a jueves." ;;
            4) echo "El día $dia corresponde a viernes." ;;
            5) echo "El día $dia corresponde a sábado." ;;
            6) echo "El día $dia corresponde a domingo." ;;
        esac
        break
    else
        echo "Error: Ingresa un valor válido en el rango de 1 a 30."
    fi
done