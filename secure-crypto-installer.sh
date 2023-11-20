#!/bin/bash

# Funzione per l'installazione su distribuzioni basate su Debian/Ubuntu
install_debian() {
    sudo apt update
    sudo apt install -y veracrypt gnupg cryptsetup openssl aescrypt
}

# Funzione per l'installazione su distribuzioni basate su Fedora
install_fedora() {
    sudo dnf makecache
    sudo dnf install -y veracrypt gnupg cryptsetup openssl aescrypt
}

# Funzione per l'installazione su distribuzioni basate su Arch
install_arch() {
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm veracrypt gnupg cryptsetup openssl aescrypt
}

# Verifica la distribuzione in uso
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [[ $ID == "ubuntu" || $ID == "debian" ]]; then
        install_debian
    elif [[ $ID == "fedora" ]]; then
        install_fedora
    elif [[ $ID == "arch" || $ID == "manjaro" ]]; then
        install_arch
    else
        echo "La tua distribuzione non è supportata da questo script."
        exit 1
    fi
else
    echo "Impossibile rilevare la distribuzione Linux."
    exit 1
fi

echo "Installazione completata."
