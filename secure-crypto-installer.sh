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

# Selezione della distribuzione Linux
echo "Seleziona la distribuzione Linux:"
echo "1. Debian/Ubuntu"
echo "2. Fedora"
echo "3. Arch/Manjaro"
read -p "Inserisci il numero corrispondente alla tua distribuzione: " distro

# Verifica della distribuzione selezionata e avvio dell'installazione
case $distro in
    1) install_debian ;;
    2) install_fedora ;;
    3) install_arch ;;
    *)
        echo "Selezione non valida. Uscita."
        exit 1
        ;;
esac

echo "Installazione completata."
