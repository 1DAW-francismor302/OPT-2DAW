#!/bin/bash
date >> informe.txt
df -h >> informe.txt
cat /proc/meminfo | head -n 5 >> informe.txt