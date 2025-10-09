#!/bin/bash
comprobar_existencia() {
    if [ $# -ne 1 ]; then
        echo "Uso: $0 comprobar_existencia <archivo>"
        return 1
    fi
    archivo="$1"
    if [ -e "$archivo" ]; then
        if [ -f "$archivo" ]; then
            echo "'$archivo' existe y es un archivo normal."
        elif [ -d "$archivo" ]; then
            echo "'$archivo' existe y es un directorio."
        else
            echo "'$archivo' existe pero no es ni archivo ni directorio normal."
        fi
    else
        echo "'$archivo' no existe."
    fi
}
