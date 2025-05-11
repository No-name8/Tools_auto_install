#!/bin/bash 


    if grep -q "debian" /etc/os-release;
    then 
        echo "Debian detected"
        debian=true 
        sudo apt update
        sudo apt install -y python3 python3-pip
    elif grep -q "centos" /etc/os-release;
    then 
        # shellcheck disable=SC2034
        centos=true
        echo "CentOS detected"
        sudo yum install -y python3 python3-pip
    elif grep -q "fedora" /etc/os-release;
    then 
        # shellcheck disable=SC2034
        fedora=true
        echo "Fedora detected"
        sudo dnf install -y python3 python3-pip
    else 
        echo "Unsupported Linux distribution"
        exit 1
    fi

#install basic tools 
if [ "$debian" = true ]; then

    sudo apt install -y gh

    sudo apt install -y openvpn
    sudo apt install -y nmap 
    sudo apt install -y git
    sudo apt install -y metasploit-framework
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

    sudo add-apt-repository ppa:deki/firejail
    sudo apt-get update
    sudo apt-get install -y firejail
    sudo apt install -y firetools

    sudo apt autoremove -y
    sudo apt autoclean -y
    

fi 

# not adding the other os cause i dont use them