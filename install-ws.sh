#!/bin/bash
# Función para imprimir mensajes
print_message() {
    echo ""
    echo "$1"
    echo ""
}
# Actualizar e instalar paquetes
print_message "Descargando paquetes necesarios"
sudo apt update -y
sudo apt install -y screen python2
# Descargar archivo Python
print_message "Descargando archivo python"
sudo mkdir -p /etc/SSH-ws
wget raw.githubusercontent.com/ETH973/Sshws80/main/websocket973.py -O /etc/SSH-ws/websocket973.py
# Dar permisos de ejecución al archivo
sudo chmod +x /etc/SSH-ws/websocket973.py
# Limpiar la pantalla
clear
# Iniciar el servicio en una sesión de screen
print_message "Iniciando servicio en screen"
screen -dmS ws_tunnel python2 /etc/SSH-ws/websocket973.py 80
#User Creado
print_message "Usuario: Hola"
print_message "Contraseña: Mundo"
useradd -e 2025-12-31 Hola && echo "Hola:Mundo" | chpasswd
# Mensaje final
print_message "Instalación completada :)"
