#!/bin/bash
# Ejercicio 13: El Archivo Inmutable (Infección de Ransomware Simulado)
# Bloquea el archivo de resolución de nombres con el atributo inmutable (+i)
echo "nameserver 1.1.1.1" > /etc/resolv.conf
chattr +i /etc/resolv.conf
echo "Simulación 13 completada."
