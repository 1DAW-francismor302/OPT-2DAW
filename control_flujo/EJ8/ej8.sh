#!/bin/bash

fecha=$(date +%Y%m%d);

if [ $# -ne 2 ]; then
    echo "Uso: $0 <directorio_origen> <directorio_destino>"
    exit 1
fi

if [ -d "$1" ] && [ -d "$2" ]; then
    for file in "$1"/*.txt; do
        nombre=$(basename "$file" .txt)
        cp "$file" "$2/${nombre}_${fecha}.txt"
    done
    echo "Backup completado correctamente."
else
    echo "Error: ambos argumentos deben ser directorios válidos."
    exit 1
fi