#!/bin/bash

# Funzione per l'installazione di KeePass su Debian/Ubuntu
install_keepass_debian() {
    sudo apt update
    sudo apt install -y keepassxc
    echo "KeePass è stato installato su Debian/Ubuntu."
}

# Funzione per l'installazione di KeePass su Fedora
install_keepass_fedora() {
    sudo dnf makecache
    sudo dnf install -y keepassxc
    echo "KeePass è stato installato su Fedora."
}

# Funzione per l'installazione di KeePass su Arch Linux
install_keepass_arch() {
    sudo pacman -Syu --noconfirm keepassxc
    echo "KeePass è stato installato su Arch Linux."
}

# Funzione per l'installazione di LastPass su Debian/Ubuntu
install_lastpass_debian() {
    # Istruzioni per l'installazione di LastPass su Debian/Ubuntu (es. tramite estensione del browser)
    echo "LastPass può essere installato tramite estensione del browser su Debian/Ubuntu."
}

# Funzione per l'installazione di LastPass su Fedora
install_lastpass_fedora() {
    # Istruzioni per l'installazione di LastPass su Fedora (es. tramite estensione del browser)
    echo "LastPass può essere installato tramite estensione del browser su Fedora."
}

# Funzione per l'installazione di LastPass su Arch Linux
install_lastpass_arch() {
    # Istruzioni per l'installazione di LastPass su Arch Linux (es. tramite estensione del browser)
    echo "LastPass può essere installato tramite estensione del browser su Arch Linux."
}

# Selezione della distribuzione Linux
echo "Seleziona la distribuzione Linux:"
echo "1. Debian/Ubuntu"
echo "2. Fedora"
echo "3. Arch/Manjaro"
read -p "Inserisci il numero corrispondente alla tua distribuzione: " distro

# Verifica della distribuzione selezionata e avvio dell'installazione
case $distro in
    1)
        echo "Strumenti disponibili:"
        echo "1. KeePass"
        echo "2. LastPass (tramite estensione del browser)"
        read -p "Inserisci il numero corrispondente allo strumento da installare: " tool
        case $tool in
            1) install_keepass_debian ;;
            2) install_lastpass_debian ;;
            *) echo "Selezione non valida. Uscita." && exit 1 ;;
        esac
        ;;
    2)
        echo "Strumenti disponibili:"
        echo "1. KeePass"
        echo "2. LastPass (tramite estensione del browser)"
        read -p "Inserisci il numero corrispondente allo strumento da installare: " tool
        case $tool in
            1) install_keepass_fedora ;;
            2) install_lastpass_fedora ;;
            *) echo "Selezione non valida. Uscita." && exit 1 ;;
        esac
        ;;
    3)
        echo "Strumenti disponibili:"
        echo "1. KeePass"
        echo "2. LastPass (tramite estensione del browser)"
        read -p "Inserisci il numero corrispondente allo strumento da installare: " tool
        case $tool in
            1) install_keepass_arch ;;
            2) install_lastpass_arch ;;
            *) echo "Selezione non valida. Uscita." && exit 1 ;;
        esac
        ;;
    *)
        echo "Selezione non valida. Uscita."
        exit 1
        ;;
esac
