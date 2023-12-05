#!/bin/bash

# Pedir al usuario dos cadenas de caracteres
echo "Ingrese la primera cadena: "
read cadena1

echo "Ingrese la segunda cadena: "
read cadena2

# Comparar las cadenas e imprimir el resultado
if [ "$cadena1" == "$cadena2" ]; then
    echo "Las cadenas son iguales."
else
    echo "Las cadenas son diferentes."
fi