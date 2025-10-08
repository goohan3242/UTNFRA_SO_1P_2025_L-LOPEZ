#!/bin/bash


DISCO_PART = $(sudo fdisk -l | grep "8 G" | awk '{print $2}' | awk -F ':' '{print $1}')
echo "Formateo mis particiones: "
sudo fdisk -l "$DISCO_PART" | grep '/dev/sdc'| grep -viE 'Disk|exten'| awk '{print"sudo mkfs.ext4"$1}'|/bin/bash
echo
echo "Monto de manera persistente las particiones: "

cat << MONT | sudo tee -a /etc/fstab

${DISCO_PART}1 $HOME/Astronomia/Planeta/Gravedad ext4  defaults  0 0 | sudo tee -a /etc/fstab
${DISCO_PART}2 $HOME/Astronomia/Planeta/Orbita ext4  defaults  0 0 | sudo tee -a /etc/fstab
${DISCO_PART}5 $HOME/Astronomia/Cometa/Cola ext4  defaults  0 0 | sudo tee -a /etc/fstab
${DISCO_PART}6 $HOME/Astronomia/Cometa/Gravedad ext4  defaults  0 0 | sudo tee -a /etc/fstab
${DISCO_PART}7 $HOME/Astronomia/Cometa/Orbita ext4  defaults  0 0 | sudo tee -a /etc/fstab

MONT

echo "Recargamos: "
sudo systemctl daemon-reload

echo
echo "Montamos todo: "
sudo mount -a

