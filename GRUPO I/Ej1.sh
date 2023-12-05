#!/bin/bash

echo "Por favor, ingresa tu nombre: "
read nombre

echo "Ahora, ingresa tu primer apellido: "
read apellido1

echo "Ingresa tu segundo apellido: "
read apellido2

sleep 5

nombre_completo="$nombre $apellido1 $apellido2"
echo "Tu nombre completo es: $nombre_completo"