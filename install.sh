#!/bin/bash 
cyan="\033[1;36m"
echo -e "
$cyan
███╗░░░███╗░█████╗░░██████╗████████╗███████╗██████╗░
████╗░████║██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗
██╔████╔██║███████║╚█████╗░░░░██║░░░█████╗░░██████╔╝
██║╚██╔╝██║██╔══██║░╚═══██╗░░░██║░░░██╔══╝░░██╔══██╗
██║░╚═╝░██║██║░░██║██████╔╝░░░██║░░░███████╗██║░░██║
╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝

██████╗░░█████╗░░██████╗░███████╗██████╗░
██╔══██╗██╔══██╗██╔════╝░██╔════╝██╔══██╗
██████╔╝███████║██║░░██╗░█████╗░░██████╔╝
██╔══██╗██╔══██║██║░░╚██╗██╔══╝░░██╔══██╗
██║░░██║██║░░██║╚██████╔╝███████╗██║░░██║
╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═╝░░╚═╝
"

sleep 4
clear 
red="\033[1;31m"
clen="\033[m"
yellow="\033[1;37;1m"
echo -e "
●❯─────────────────────❮●❯─────────────────────❮●
  $yellow 
  Esse script irá instalar pacotes necessários 
  
     para que seja capaz de calcular 📈
    
     sub máscaras de rede  e validar ✅️$clen
●❯─────────────────────❮●❯─────────────────────❮●
         $red Prosseguir (S) sim ou (N) não $clen
"
read r

if [ $r == "S" ]
then
echo "PERMISSÃO PARA ARMAZENAMENTO INTERNO \n"
sleep 4
clear
termux-setup-storage;
clear 
echo "UPDATES DE PACOTES ALGUNS PODEM PERDIR 
PERMISSÃO SER FOR A PRIMEIRA VEZ"
sleep 4
clear
  pkg update -y
  pkg upgrade -y
  apt update -y
  apt upgrade -y
  clear 
echo "INSTALANDO CURL para requisições"
sleep 4
  pkg install curl -y
clear
echo "ATUALIZAO O GITHUB "
sleep 4
clear 
  pkg install git -y
clear 
echo "BAIXANDO O WGET "
sleep 4 
clear
  pkg install wget -y
clear
echo "INSTALANDO PYTHON 3 
e suas dependências"
sleep 4
clear
  pkg install python3 -y
  pip install requests
  python3 -m pip install --upgrade pip
clear
echo "BAIXANDO figlet 
para o cálculo de sub rede"
sleep 4
clear
  pkg install figlet -y
echo "ATUALIZAO nano"
sleep 4 
clear
  pkg install nano -y
clear
echo "BAIXANDO php para 
executar nosso programa"
sleep 4
clear
  pkg install php -y
echo "BAIXANDO nmap para 
validação dos ranges "
sleep 4
clear
  pkg install nmap -y
clear
echo "INSTALANDO golang para
baixar pacotes específicos"
sleep 4
clear
  pkg install golang -y

echo 'PATH="$PATH:$HOME/go/bin"' >> $HOME/.bashrc && source $HOME/.bashrc

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
  
go install -v github.com/aztecrabbit/bugscanner-go@latest

go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

clear
echo "INSTALANDO Master Ranger"
sleep 4
mv Ranger /data/data/com.termux/files/usr/bin 
sleep 5
chmod +rwx Ranger 
clear
echo -e "$yellow Master Ranger instalado com sucesso $cyan digite Ranger para iniciar "
else
echo "Desligando... já já você está de volta"
fi
