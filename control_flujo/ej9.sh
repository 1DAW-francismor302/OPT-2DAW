#!/bin/bash

if [ $# -ne 1 ]; then
    echo "uso: $0 solo un argumento"
    exit 1
fi

usuario=$1;

if [ grep "^$usuario:" "/etc/passwd" ]; then
    echo "El usuario introducido existe"
else
    echo "El usuario introducido no existe"
    exit 1
fi