#!/bin/bash
# ===============================================
# Script: reporte_sistema.sh
# Descripción: Genera un informe del estado del sistema
# ===============================================

echo "============================================="
echo " REPORTE DEL SISTEMA - $(date '+%Y-%m-%d %H:%M:%S')"
echo "============================================="

echo "Nombre del host: $(hostname)"
echo "Usuarios conectados: $(who | wc -l)"
echo "Espacio libre en disco principal (/): $(df -h / | awk 'NR==2 {print $4}')"
echo "Memoria RAM disponible: $(free -h | awk '/Mem:/ {print $7}')"

# Verificar si Docker está instalado
if command -v docker &> /dev/null
then
    echo "Contenedores Docker activos: $(docker ps -q | wc -l)"
else
    echo "Docker no está instalado o no se está ejecutando."
fi

echo "---------------------------------------------"
