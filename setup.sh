#!/bin/bash

while :
do

clear

echo 

banner(){
echo

echo -e "\033[32m __________                               \033[0m"
echo -e "\033[32m \______   \ ______________  _  _______   \033[0m"
echo -e "\033[32m  |    |  _//  ___/\____ \ \/ \/ /     \  \033[0m"
echo -e "\033[32m  |    |   \\___ \ |  |_> >     /  Y Y  \ \033[0m"
echo -e "\033[32m  |______  /____  >|   __/ \/\_/|__|_|  / \033[0m"
echo -e "\033[32m         \/     \/ |__|               \/  \033[0m"

}

banner
echo

int_handler (){
    clear
    echo
    echo -e "\033[1m [+] Adios \033[0m"
    kill $PPID
    exit 1
}

trap 'int_handler' INT

if [ "$(id -u)" != "0" ]; then
   echo -e "\033[1m Ejecute este script como root (usando sudo). \033[0m"
   exit 1
fi

echo

   echo
   echo -e "   \033[1m [1] Instalar en Kali Linux \033[0m"
   echo -e "   \033[1m [2] Instalar en Parrot OS \033[0m"
   echo -e "   \033[1m [3] Salir \033[0m"
   echo

   read -p $'\033[1m [+] Seleccione una opción: \033[0m' opcion

   case $opcion in

           1) echo
           source Kali-Linux/
           sudo chmod +x install.sh
           bash install.sh;;

           2) echo
           source Parrot-OS/
           sudo chmod +x install.sh
           bash install.sh;;

           3) echo
           clear
           echo -e "\033[1m [+] Adios\033[0m"
           exit;;
           
esac

echo

done