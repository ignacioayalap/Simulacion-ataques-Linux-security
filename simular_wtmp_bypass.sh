#!/bin/bash
# Ejercicio 8: Ataque de Manipulación del Log de Sesiones (utmp/wtmp)
# Simula una sesión fantasma inyectando ruido en el syslog
# pero alterando la visibilidad en 'who'
logger -t sshd "Accepted password for root from 192.168.1.250 port 54321 ssh2"
# Mensaje falso para confundir al administrador
echo "Limpiando sesiones muertas del sistema..." > /dev/null
echo "Simulación 8 completada."
