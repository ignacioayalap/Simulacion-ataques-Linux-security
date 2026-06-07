#!/usr/bin/bash
# Simula un ataque de fuerza bruta inyectando logs directamente
LOG_FILE="/var/log/auth.log"
[ ! -f "$LOG_FILE" ] && LOG_FILE="/var/log/syslog"

echo "[*] Simulando rafaga de ataques SSH desde IP maliciosa..."
HORA=$(date "+%b %d %H:%M:%S")

for i in {1..15}; do
  echo "$HORA ubuntu-server sshd[${$}$i]: Failed password for root from 198.51.100.7 port 49152 ssh2" >> "$LOG_FILE"
done

# Simular manipulacion de Fail2ban
if systemctl is-active --quiet fail2ban; then
  sudo fail2ban-client stop sshd >/dev/null 2>&1
fi
echo "Simulacion 1 completada."
