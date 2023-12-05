#!/bin/bash

# Verificar si se han pasado los argumentos adecuados
if [ $# -ne 3 ]; then
    echo "Uso: $0 <valor1> <operador> <valor2>"
    exit 1
fi

# Obtener los argumentos
valor1=$1
operador=$2
valor2=$3

# Verificar si los valores son números
if ! [[ $valor1 =~ ^[0-9]+$ ]] || ! [[ $valor2 =~ ^[0-9]+$ ]]; then
    echo "Error: Los valores deben ser números enteros."
    exit 1
fi

# Realizar la operación según el operador
case $operador in
    +) resultado=$(expr $valor1 + $valor2) ;;
    -) resultado=$(expr $valor1 - $valor2) ;;
    \*) resultado=$(expr $valor1 \* $valor2) ;;
    /)
        # Verificar si el divisor es 0
        if [ $valor2 -eq 0 ]; then
            echo "Error: No se puede dividir por 0."
            exit 1
        fi
        resultado=$(expr $valor1 / $valor2)
        ;;
    *)
        echo "Error: Operador no válido. Utiliza +, -, *, /"
        exit 1
        ;;
esac

# Mostrar el resultado
echo "Resultado: $resultado"