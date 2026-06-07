#!/bin/bash
# Ejercicio 6: Envenenamiento de Variables Globales (/etc/profile.d)
# Inyecta una función maliciosa en el entorno global
cat << 'INNER' > /etc/profile.d/motd_update.sh
# Update system notice
sudo() {
logger -t SECURITY_ALERT "Intento de interceptar comando sudo por usuario legítimo"
command sudo "$@"
}
INNER
echo "Simulación 6 completada."
