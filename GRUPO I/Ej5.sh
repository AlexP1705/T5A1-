#!/bin/bash

# Archivo de base de datos
archivo_bd="bdlibros.txt"

# Géneros disponibles
generos=("Ficción" "No ficción" "Ciencia ficción" "Misterio" "Romance" "Fantasía")

# Pedir al usuario los detalles del libro
echo "Ingrese los detalles del libro:"
read -p "Título: " titulo
read -p "Año: " anio
read -p "Editorial: " editorial

# Mostrar los géneros disponibles
echo "Géneros disponibles:"
for ((i = 0; i < ${#generos[@]}; i++)); do
    echo "$((i + 1)). ${generos[i]}"
done

# Pedir al usuario que elija un género
read -p "Seleccione el número del género: " opcion_genero

# Verificar la opción del género
if [ $opcion_genero -ge 1 ] && [ $opcion_genero -le ${#generos[@]} ]; then
    genero_elegido=${generos[opcion_genero - 1]}

    # Insertar datos en el archivo de base de datos
    echo "$titulo|$anio|$editorial|$genero_elegido" >> "$archivo_bd"
    echo "Libro añadido correctamente a la base de datos."
else
    echo "Error: Opción de género no válida."
fi