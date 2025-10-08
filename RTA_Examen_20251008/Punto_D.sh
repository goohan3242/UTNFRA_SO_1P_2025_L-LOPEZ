#!/bin/bash

#Sabiendo que el directorio raiz del S.O. es /, entonces:
echo "Creo la estructura de directorios: "
sudo mkdir -p /Punto_D/{Libros,Musica,videos}

echo
echo "Verifico: "
tree /Punto_D/

#Ahora tomo la salida del whoami y con el comando tee creo los elementos y los edito:
echo
echo "Creo los archivos con la informacion del whoami: "
echo "$(whoami)" | sudo tee /Punto_D/{Libros,Musica,videos}/elemento.txt

echo
echo "Lo verifico: "
cat /Punto_D/{Libros,Musica,videos}/elemento.txt




