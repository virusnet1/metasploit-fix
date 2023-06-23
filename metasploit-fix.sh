#!bin/bash
red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
blue='\e[1;34m'
clear
#<---virusnet fix metasploit---->
echo -e $red '                   __                   __      _ __     _____     '
sleep 0.3
echo -e $green '   ____ ___  ___  / /_____ __________  / /___  (_) /_   / __(_)  __'
sleep 0.3
echo -e $yellow '  / __ `__ \/ _ \/ __/ __ `/ ___/ __ \/ / __ \/ / __/  / /_/ / |/_/'
sleep 0.3
echo -e $red ' / / / / / /  __/ /_/ /_/ (__  ) /_/ / / /_/ / / /_   / __/ />  < ' 
sleep 0.3
echo -e $yellow '/_/ /_/ /_/\___/\__/\__,_/____/ .___/_/\____/_/\__/  /_/ /_/_/|_|'  
sleep 0.3
echo -e $green '                             /_/                                '
printf "\n"
sleep 0.3
echo -e $blue "  By virusnet https://github.com/virusnet1       "
printf "\n"
apt install postgresql
service postgresql start
systemctl enable postgresql
apt autoremove metasploit-framework
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 777 msfinstall && \
  ./msfinstall
  rm msfinstall
  msfconsole
