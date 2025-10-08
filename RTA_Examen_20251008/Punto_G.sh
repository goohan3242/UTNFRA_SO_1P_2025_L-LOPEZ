#!/bin/bash

echo
echo "Filtro avanzado: "
#Creo el directorio
mkdir $HOME/Punto_G

#Creo el archivo y agrego la informacion de la ip
echo "Mi ip publica es: $(curl -s ifconfig.me)" > Punto_G/Filtro_Avanzado.txt

#Agrego al informacion del CPU y la Frec
echo "CPU Modelo: $(grep "model name" /proc/cpuinfo | tail -n1 | awk '{print $5,$6,$7}') Frecuencia: $( grep -i "Mhz" /proc/cpuinfo | tail -n1 | awk '{print $4}')MHz" >> Punto_G/Filtro_Avanzado.txt

#Muestro el archivo 
echo
cat Punto_G/Filtro_Avanzado.txt


