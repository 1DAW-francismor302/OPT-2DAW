#!/bin/bash
size_mb=$(du -m "./EJ12/app.log" | cut -f1);
variable=$(date +%Y%m%d);
nombre_fichero="$variable.tar.gz";
echo $size_mb;
if [ $size_mb -gt 10 ]; then
    echo "El archivo pesa más de 10MB";
    tar -czvf $nombre_fichero "./EJ12/app.log";
    > "./EJ12/app.log";
else
    echo "El archivo pesa menos de 10MB";
fi

