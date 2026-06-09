<div align="center">
  <h1>🛡️ Linux Security & Attack Simulations</h1>
  <p><i>Colección de scripts en Bash para simular técnicas de ataque, persistencia y evasión en sistemas Linux</i></p>

  ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
  ![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
  ![Cybersecurity](https://img.shields.io/badge/Cybersecurity-Red%20Team-red?style=for-the-badge)
</div>

<br>

## 📝 Descripción

Este repositorio contiene una serie de **scripts en Bash (`.sh`)** diseñados para simular de forma controlada diversas tácticas, técnicas y procedimientos (TTPs) utilizados por atacantes en entornos Linux. El objetivo de este proyecto es educacional y está orientado a **Red Teaming, Blue Teaming, auditorías de seguridad y respuesta a incidentes**.

> ⚠️ **Advertencia Legal:** Estos scripts deben ser utilizados **únicamente en entornos de prueba controlados y autorizados** (Laboratorios, Máquinas Virtuales, CTFs). No los ejecutes en sistemas de producción sin autorización previa.

---

## 🛠️ Scripts y Simulaciones Incluidas

A continuación se detalla el listado de las simulaciones de ataque disponibles en este repositorio:

| Archivo | Descripción de la Simulación / Ataque | Categoría |
| :--- | :--- | :--- |
| 📄 `simular_archivo_inmutable.sh` | Creación de archivos inmutables (`chattr +i`) para dificultar su eliminación o modificación. | Persistencia / Defensa |
| ⏳ `simular_at_attack.sh` | Uso del comando `at` para programar tareas maliciosas u ocultar ejecución de procesos. | Persistencia |
| 🔑 `simular_ataque_ssh.sh` | Simulación de técnicas relacionadas con SSH (fuerza bruta, manipulación de `authorized_keys`, etc.). | Acceso Inicial / Persistencia |
| 🗑️ `simular_borrado_masivo.sh` | Ejecución de técnicas de borrado de archivos o destrucción de evidencias. | Impacto |
| 🪤 `simular_directorio_trampa.sh` | Creación de directorios trampa u ocultos (Ej. nombres con espacios o directorios `.`) para esconder malware. | Evasión de Defensas |
| 👥 `simular_grupo_comprometido.sh` | Manipulación de grupos del sistema (añadir usuarios al grupo `sudo` o `root`). | Escalada de Privilegios |
| 🔓 `simular_privilegios.sh` | Simulación genérica de intentos de escalada de privilegios y bypass de controles. | Escalada de Privilegios |
| ☠️ `simular_profile_poison.sh` | Inyección de comandos maliciosos en archivos de perfil de usuario (`.bashrc`, `.profile`). | Persistencia |
| 🎭 `simular_root_alias.sh` | Modificación de alias del sistema o de root para interceptar comandos (Ej. alias de `sudo`). | Evasión / Robo de Credenciales |
| 🚪 `simular_suid_backdoor.sh` | Creación de archivos binarios con el bit `SUID` activado (Ej. copiar `/bin/bash` con SUID). | Persistencia / Escalada |
| ⚙️ `simular_systemd_poison.sh` | Creación o modificación maliciosa de servicios de `systemd` para ejecución en el arranque. | Persistencia |
| 🕵️ `simular_wtmp_bypass.sh` | Alteración o borrado de registros del sistema (logs como `wtmp`, `btmp` o `auth.log`) para borrar rastros. | Evasión de Defensas |

---

## 🚀 Uso

Para ejecutar cualquiera de las simulaciones, debes otorgar permisos de ejecución al script deseado y ejecutarlo (se recomienda hacerlo como `root` o con `sudo` dependiendo de la técnica, dentro de un entorno seguro):

```bash
# 1. Otorgar permisos de ejecución
chmod +x nombre_del_script.sh

# 2. Ejecutar el script
./nombre_del_script.sh
```

---

## 🛡️ Casos de Uso (Defensa)

Estos scripts son especialmente útiles para **Blue Teams** que buscan:
- Validar y probar reglas de detección en un SIEM o EDR (como Wazuh, Splunk, Elastic Security, Microsoft Sentinel, etc.).
- Probar la eficacia de las políticas de monitorización de integridad de archivos (FIM).
- Entrenar equipos de respuesta a incidentes analizando los artefactos y logs que dejan estos scripts tras su ejecución.

---

## 📜 Licencia

Este proyecto fue creado con propósitos meramente educativos e investigativos en el ámbito de la ciberseguridad. El autor no se hace responsable del mal uso de las herramientas aquí provistas.
