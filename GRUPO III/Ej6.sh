#!/bin/bash
# Función para calcular el n-ésimo término de Fibonacci
fibonacci() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(( $(fibonacci $(( $1 - 1 ))) + $(fibonacci $(( $1 - 2 ))) ))
    fi
}

# Verificar si se ha pasado un argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <n>"
    exit 1
fi

# Obtener el valor de n desde el argumento
n=$1

# Verificar si el valor es un número mayor que 0
if [[ $n =~ ^[1-9][0-9]*$ ]]; then
    echo "Los primeros $n elementos de la sucesión de Fibonacci son:"
    for ((i = 0; i < n; i++)); do
        resultado=$(fibonacci $i)
        echo -n "$resultado "
    done
    echo
else
    echo "Error: Ingresa un valor válido mayor que 0."
    exit 1
fi