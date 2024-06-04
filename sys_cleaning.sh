#!/bin/bash

# Borrar archivos temporales
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

# Limpiar logs antiguos
sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

echo "System Cleaned"