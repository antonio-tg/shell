#!/bin/bash
# scritp de actualización

echo "Actualizando"
sudo apt-get update && sudo apt-get full-upgrade -y

echo "Revisando"
sudo apt-get list --upgradable

echo "Limpiando"
sudo apt-get autoremove -y
