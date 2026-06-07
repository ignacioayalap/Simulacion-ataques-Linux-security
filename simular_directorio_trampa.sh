#!/bin/bash
# Ejercicio 9: El Directorio Compartido "Trampa" (Permisos Heredados Violados)
mkdir -p /srv/public_box
chmod 777 /srv/public_box
# El atacante modifica la máscara por defecto mediante un script de control intermedio
useradd -m -s /bin/bash usuario_a 2>/dev/null
useradd -m -s /bin/bash usuario_b 2>/dev/null
echo "Simulación 9 completada."
echo ""
echo "--- INSTRUCCIONES ---"
echo "1. Iniciá sesión como usuario_a:  su - usuario_a"
echo "2. Creá un archivo:               touch /srv/public_box/archivo_prueba.txt"
echo "3. Verificá los permisos:         ls -la /srv/public_box/"
echo "Notarás que el archivo nace con permisos excesivamente abiertos (666)."
