#!/bin/bash

# Archivo de base de datos
archivo_bd="bdlibros.txt"

# Función para buscar por título
buscar_por_titulo() {
    read -p "Ingrese el título a buscar: " titulo_buscar
    grep -i "$titulo_buscar" "$archivo_bd"
}

# Función para buscar por año
buscar_por_anio() {
    read -p "Ingrese el año a buscar: " anio_buscar
    grep -i "|$anio_buscar|" "$archivo_bd"
}

# Función para buscar por editorial
buscar_por_editorial() {
    read -p "Ingrese la editorial a buscar: " editorial_buscar
    grep -i "|$editorial_buscar|" "$archivo_bd"
}

# Función para buscar por género
buscar_por_genero() {
    read -p "Ingrese el género a buscar: " genero_buscar
    grep -i "|$genero_buscar$" "$archivo_bd"
}

# Función principal
while true; do
    echo "Menú de Opciones:"
    echo "1) Buscar por título"
    echo "2) Buscar por año"
    echo "3) Buscar por editorial"
    echo "4) Buscar por género"
    echo "5) Insertar libro"
    echo "6) Salir"

    read -p "Seleccione una opción (1-6): " opcion

    case $opcion in
        1) buscar_por_titulo ;;
        2) buscar_por_anio ;;
        3) buscar_por_editorial ;;
        4) buscar_por_genero ;;
        5) ./libros-anyadir.sh ;;  # Llamamos al script de añadir libros
        6) echo "Saliendo del programa. ¡Hasta luego!"; exit ;;
        *) echo "Opción no válida. Intente de nuevo." ;;
    esac
done