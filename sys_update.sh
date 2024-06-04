#!/bin/bash

# Actualizar la lista de paquetes
sudo apt update

# Actualizar todos los paquetes instalados
sudo apt upgrade -y

# Limpiar paquetes no necesarios
sudo apt autoremove -y
sudo apt autoclean

echo "Debian 12 actualizado exitosamente."
