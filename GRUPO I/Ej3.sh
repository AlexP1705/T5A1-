#!/bin/bash

# Inicializar variables
suma=0
contador=0

# Bucle para obtener valores del usuario hasta que se introduce 0
while true; do
    # Pedir al usuario un valor
    echo "Introduce un valor (0 para salir): "
    read valor

    # Verificar si el valor es 0 para salir del bucle
    if [ $valor -eq 0 ]; then
        break
    fi

    # Verificar si el valor es un número
    if ! [[ $valor =~ ^[0-9]+$ ]]; then
        echo "Error: Introduce un número válido."
        continue
    fi

    # Sumar el valor al total y aumentar el contador
    suma=$((suma + valor))
    contador=$((contador + 1))
done

# Calcular el valor medio (evitar división por cero)
if [ $contador -gt 0 ]; then
    valor_medio=$(awk "BEGIN {printf \"%.2f\", $suma / $contador}")
else
    valor_medio=0
fi

# Mostrar resultados
echo "Suma total de valores: $suma"
echo "Valor medio: $valor_medio"