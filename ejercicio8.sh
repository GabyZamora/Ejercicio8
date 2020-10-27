#!/bin/bash


# Información del procesador
procesador() {
echo "Mostrando información sobre el procesador."
lscpu
pause
}

# Información del disco duro y sus particiones.
particiones() {
echo "Mostrando información sobre el disco duro y sus particiones."
df -Th
pause
}

# Información sobre la memoria.
memoria() {
echo "Mostrando información sobre la memoria RAM en GB."
free -h
pause
}

# Información sobre la IP.
ip() {
echo "Mostrando información sobre mi dirección IP."
nmcli device show
pause
}

# Información del kernel y distribución del sistema.
kernel() {
echo "Mostrando nombre del kernel."
uname -r
echo "Mostrando nombre de la distribución del sistema."
hostnamectl
pause
}


usuarios() {
echo "Mostrando los usuarios del sistema."
less /etc/passwd
pause
}

RED='\033[0;41;30m'
STD='\033[0;0;39m'
pause() {
read -p "Presione [Enter] para continuar..."
factEnterkey
}

show_menu() {
clear
echo "---Menú de Opciones---"
echo "1. Información del procesador."
echo "2. Información del disco duro."
echo "3. Información de memoria RAM en GB."
echo "4. Dirección IP."
echo "5. Información de Kernel y distribución del sistema."
echo "6. Usuarios del sistema."
echo "7. Salir."

}

read_options() {
local opc
read -p "Seleccione una opción [1 - 7]: " opc
case $opc in
1) procesador;;
2) particiones;;
3) memoria;;
4) ip;;
5) kernel;;
6) usuarios;;
7) exit 0;;
*) echo -e "${RED}Error...${STD}" && sleep 2

esac
}

trap '' SIGINT SIGQUIT SIGTSTP


while true
do
 show_menu
  read_options
  done
