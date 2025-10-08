#!/bin/bash

echo
echo "Modifico los usuarios y grupos de los directorios, y tambien de los archivos: "
sudo chown -R p1c1_2025_u1:p1c1_2025_gTodos /Punto_D/Libros/
sudo chown -R p1c1_2025_u2:p1c1_2025_gTodos /Punto_D/Musica/
sudo chown -R p1c1_2025_u3:p1c1_2025_gTodos /Punto_D/videos/

echo
echo "Edito los permisos de los directorios pero no de los archivos: "
sudo chmod 740 /Punto_D/Libros/
sudo chmod 715 /Punto_D/Musica/
sudo chmod 775 /Punto_D/videos/




