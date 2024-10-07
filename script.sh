#:wq
!/bin/bash

read -p "¿Cómo te llamas? " nombre
echo $nombre > nombre.txt

# Crear el directorio PARAMETRO si no existe
mkdir -p PARAMETRO

# Guardar los minutos actuales en el archivo GANADOR.txt
minutos=$(date +"%M")
echo $minutos > PARAMETRO/GANADOR.txt

# Verificar si los minutos son pares
if (( minutos % 2 == 0 )); then
    # Si los minutos son pares, agregar el mensaje de que ha ganado
    echo "¡Has ganado, $nombre!" >> PARAMETRO/GANADOR.txt
else
    # Si los minutos son impares, agregar el mensaje de que ha perdido
    echo "Has perdido, $nombre" >> PARAMETRO/GANADOR.txt
fi
