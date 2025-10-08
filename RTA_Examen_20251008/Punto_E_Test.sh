echo
echo "Pruebo los permisos de cada directorio: "
#/Punto_D/Libros/
sudo su -c "ls -l /Punto_D/Libros/" p1c1_2025_u1
sudo su -c "ls -l /Punto_D/Libros/" p1c1_2025_u2
sudo su -c "ls -l /Punto_D/Libros/" p1c1_2025_u3
#/Punto_D/Musica/
sudo su -c "ls -l /Punto_D/Musica/" p1c1_2025_u2
sudo su -c "ls -l /Punto_D/Musica/" p1c1_2025_u3
sudo su -c "cat /Punto_D/Musica/elemento.txt" p1c1_2025_u3
sudo su -c "ls -l /Punto_D/Musica/" p1c1_2025_u1
#/Punto_D/videos/
sudo su -c "ls -l /Punto_D/videos/" p1c1_2025_u3
sudo su -c "cat /Punto_D/videos/elemento.txt" p1c1_2025_u3
sudo su -c "ls -l /Punto_D/videos/" p1c1_2025_u1
sudo su -c "ls -l /Punto_D/videos/" p1c1_2025_u2
sudo su -c "cat /Punto_D/videos/elemento.txt" p1c1_2025_u1
sudo su -c "cat /Punto_D/videos/elemento.txt" p1c1_2025_u2

