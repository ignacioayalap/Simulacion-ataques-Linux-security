#!/bin/bash
# Ejercicio 14: Borrado Masivo de Usuarios mediante Script Zombie
# Crear cuentas y luego borrarlas secuencialmente simulando un ataque veloz
for i in {1..5}; do
    useradd dev_user_$i 2>/dev/null
    userdel dev_user_$i 2>/dev/null
done
echo "Simulación 14 completada."
