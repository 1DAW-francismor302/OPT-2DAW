#!/bin/bash
read -p "Indique un archivo a verificar: " file;
if [ -f $file ]; then
    stat $file | sed -n '4p';
else
    echo El archivo no existe;
fi
