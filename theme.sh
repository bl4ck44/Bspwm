#!/bin/bash

ruta=$(pwd)

opciones()
{
    zenity --list --title="Selecciona una opción" --column="Elige una opción: " "$@"
}


Kali_theme()
{
	#Damos permisos de ejecución 
	sudo chmod +x $ruta/Themes/Kali/.p10k.zsh
	sudo chmod +x $ruta/Themes/Kali/.p10k.zsh-root
	sudo chmod +x $ruta/Themes/Kali/Config/bspwm/bspwmrc 
    sudo chmod +x $ruta/Themes/Kali/Config/bspwm/scripts/bspwm_resize 
    sudo chmod +x $ruta/Themes/Kali/Config/bin/ethernet_status.sh
    sudo chmod +x $ruta/Themes/Kali/Config/bin/htb_status.sh 
    sudo chmod +x $ruta/Themes/Kali/Config/bin/htb_target.sh 
    sudo chmod +x $ruta/Themes/Kali/Config/polybar/launch.sh 
    sudo chmod +x /usr/local/bin/whichSystem.py 
    sudo chmod +x /usr/local/bin/screenshot 
	#Limpiamos viejos dot files
	sudo rm -rf	~/.p10k.zsh
	sudo rm -rf	/root/.p10k.zsh
	sudo rm -rf ~/.config/bspwm
	sudo rm -rf ~/.config/bin
	sudo rm -rf ~/.config/picom
	sudo rm -rf ~/.config/polybar
	sudo rm -rf ~/.config/rofi
	sudo rm -rf ~/.config/Wallpaper
	#Movemos los dot files
    sudo cp -v $ruta/Themes/Kali/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/Kali/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup"
	sudo cp -rv $ruta/Themes/Kali/Config/* ~/.config/
	echo "config setup"
    rofi-theme-selector
    echo "Kali theme instalado"
    kill -9 -1
}


Parrot_theme()
{
	#Damos permisos de ejecución 
	sudo chmod +x $ruta/Themes/Parrot/.p10k.zsh
	sudo chmod +x $ruta/Themes/Parrot/.p10k.zsh-root
	sudo chmod +x $ruta/Themes/Parrot/Config/bspwm/bspwmrc 
    sudo chmod +x $ruta/Themes/Parrot/Config/bspwm/scripts/bspwm_resize 
    sudo chmod +x $ruta/Themes/Parrot/Config/bin/ethernet_status.sh
    sudo chmod +x $ruta/Themes/Parrot/Config/bin/htb_status.sh 
    sudo chmod +x $ruta/Themes/Parrot/Config/bin/htb_target.sh 
    sudo chmod +x $ruta/Themes/Parrot/Config/polybar/launch.sh 
    sudo chmod +x /usr/local/bin/whichSystem.py 
    sudo chmod +x /usr/local/bin/screenshot 
	#Limpiamos viejos dot files
	sudo rm -rf	~/.p10k.zsh
	sudo rm -rf	/root/.p10k.zsh
	sudo rm -rf ~/.config/bspwm
	sudo rm -rf ~/.config/bin
	sudo rm -rf ~/.config/picom
	sudo rm -rf ~/.config/polybar
	sudo rm -rf ~/.config/rofi
	sudo rm -rf ~/.config/Wallpaper
	#Movemos los dot files
    sudo cp -v $ruta/Themes/Parrot/.p10k.zsh ~/.p10k.zsh
    sudo cp -v $ruta/Themes/Parrot/.p10k.zsh-root /root/.p10k.zsh
    echo "p10k setup"
	sudo cp -rv $ruta/Themes/Parrot/Config/* ~/.config/
	echo "config setup"
    rofi-theme-selector
    echo "Parrot theme instalado"
    kill -9 -1
}



selected_option=$(opciones "Kali" "Parrot")


case "$selected_option" in
    "Kali")
        Kali_theme
		;;
    "Parrot")
        Parrot_theme
        ;;

    *)
        echo "Selección inválida."
        ;;
esac
