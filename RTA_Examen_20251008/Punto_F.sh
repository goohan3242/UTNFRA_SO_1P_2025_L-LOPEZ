#!/bin/bash

echo
echo "Filtro basico: "
#Creo el directorio con el archivo
mkdir -p $HOME/Punto_F/ && touch $HOME/Punto_F/Filtro_basico.txt

#Agrego la info del total de la memoria RAM al archivo
grep -i memtotal /proc/meminfo > $HOME/Punto_F/Filtro_basico.txt

#Agrego al info del modelo del cpu y la frecuencia:
grep -iE "model | MHz" /proc/cpuinfo | tail -n2 >> $HOME/Punto_F/Filtro_basico.txt

#Muestro el archivo
cat $HOME/Punto_F/Filtro_basico.txt
