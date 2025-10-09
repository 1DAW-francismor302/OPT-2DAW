#!/bin/bash

read -p "Introduce un numero: " n1

echo "Tabla de multiplicar del $n1"
for i in {1..10}; do
    echo "$n1 x $i = $((n1 * i))"
done