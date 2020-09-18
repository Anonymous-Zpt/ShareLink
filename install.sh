#!/bin/bash
g="${b}\033[1;30m"
b="\033[0m"
b1="$b\033[1;37m"
r="${b}\033[1;31m"
r1="${b}\033[31m"
A="${b}\033[1;34m"
A1="${b}\033[34m"
ac="${b}\e[1;36m"
ac1="${b}\e[36m"
v="${b}\033[1;32m"
v1="${b}\033[32m"
m="$b\033[1;35m"
m1="$b\033[35m"
a="$b\033[1;33m"
a1="$b\033[33m"
cy="$b\033[38;2;23;147;209m"
trap Adios INT
Adios() {
		sleep 0.2
		echo -e "\n${v}\n[$b1+$v]$b1 Finished\n$v[$b1+$v]$b1 Created by Anonymous Zpt\n$v[$b1+$v]$b1 Gracias por usar mi herramienta\n$v[$b1+$v]$b1 servicio de ayuda https://t.me/Anonymous_Zpt$b\n"
		sleep 0.0
		exit
	}
banner() {
		clear
		echo -e "$v  ▄▄▄▄  █                           ▄        ▀           █\n █▀   ▀ █ ▄▄    ▄▄▄    ▄ ▄▄   ▄▄▄   █      ▄▄▄    ▄ ▄▄   █   ▄\n ▀█▄▄▄  █▀  █  ▀   █   █▀  ▀ █▀  █  █        █    █▀  █  █ ▄▀\n     ▀█ █   █  ▄▀▀▀█   █     █▀▀▀▀  █        █    █   █  █▀█\n ▀▄▄▄█▀ █   █  ▀▄▄▀█   █     ▀█▄▄▀  █▄▄▄▄▄ ▄▄█▄▄  █   █  █  ▀▄$b\n "
		sleep 0.1
	}
banner
echo -e "\033[0m\033[32mInstalacion Necesaria:$b\n "
command -v php > /dev/null 2>&1 || { sleep 2; echo >&2 -e "$v1[$b*$v1]$b Instalando Php..."; pkg install php -y &>> /dev/null;sleep 1;}
command -v curl > /dev/null 2>&1 || { sleep 2; echo >&2 -e "$v1[$b*$v1]$b Instalando Curl..."; pkg install curl -y &>> /dev/null;sleep 1;}
command -v openssh > /dev/null 2>&1 || { sleep 2; echo >&2 -e "$v1[$b*$v1]$b Instalando Openssh..."; pkg install php -y &>> /dev/null;sleep 1;}
case $(command -v ngrok) in
"")
sleep 2
echo
echo -e "$v1[$b*$v1]$b Instalando Ngrok..."
cd
git clone https://github.com/Anonymous-Zpt/NgrokAz &>> /dev/null
cd ~/NgrokAz
unzip ngrok-stable-linux-arm.zip &>> /dev/null
chmod 777 ~/NgrokAz/ngrok
mv ~/NgrokAz/ngrok ~/ShareLink
;;
*)
sleep 2
echo
echo -e "$v1[$b*$v1]$b Instalando Ngrok..."
sleep 1
echo -e "$(cp $(command -v ngrok) $(pwd))" &>> /dev/null
esac
sleep 2
banner
echo
chmod 777 ~/ShareLink/Sharelink
sleep 0.3
printf "$A[$b1+$A]${b1} Finalizado..!\n"
sleep 0.3
printf "$A[$b1+$A]${b1} Creador:$a Anonymous Zpt\n"
sleep 0.3
printf "$A[$b1+$A]${b1} GitHub:$a  https://github.com/Anonymous-Zpt\n"
sleep 0.3
printf "$A[$b1+$A]${b1} YouTube:$a http://www.youtube.com/c/AnonymousZpt$b\n"
sleep 0.3
printf "$A[$b1+$A]${b1} Utiliza:$r ./Sharelink$b\n"
sleep 0.1
echo
sleep 1
exit
