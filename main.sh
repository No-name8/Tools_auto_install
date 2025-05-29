#!/bin/bash 


    if grep -q "debian" /etc/os-release;
    then 
        echo "Debian detected"
        debian=true 
        sudo apt update
        sudo apt install -y python3 python3-pip
    else 
        echo "Unsupported Linux distribution"
        exit 1
    fi

#install basic tools 
if [ "$debian" = true ]; then

    sudo apt install -y gh

    sudo apt install -y enum4linux
    sudo apt install -y openvpn
    sudo apt install -y nmap 
    sudo apt install -y git
    sudo apt install -y hydra
    sudo apt install -y ncat 
    sudo apt install -y wireshark 
    sudo apt install -y netcat
    sudo apt install -y john
    sudo apt install -y TheHarvester
    sudo apt install -y gobuster
    sudo apt install -y Parsero
    sudo apt install -y hashcat
    sudo apt install -y sqlmap
    sudo apt install -y powershell 
    sudo apt install -y gobuster
    sudo apt install -y nikto
    sudo apt install -y subfinder
    sudo apt install -y assetfinder
    sudo apt install -y httpx
    sudo apt install -y ffuf
    wget https://raw.githubusercontent.com/n0kovo/n0kovo_subdomains/refs/heads/main/n0kovo_subdomains_medium.txt


    sudo add-apt-repository ppa:deki/firejail
    sudo apt-get update
    sudo apt-get install -y firejail
    sudo apt install -y firetools

    sudo apt autoremove -y
    sudo apt autoclean -y
    

fi 

# not adding the other os cause i dont use them
