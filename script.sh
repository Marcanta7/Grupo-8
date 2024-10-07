#!/bin/bash

read -p "¿Cómo te llamas? " nombre
echo $nombre > nombre.txt
mkdir PARAMETRO

date +"%M" > PARAMETRO/GANADOR.txt

if (( minutos % 2 == 0 )); then
    # Si los minutos son pares, agregar el mensaje de que ha ganado
    echo "¡Has ganado, $nombre!" >> PARAMETRO/ganador.txt

