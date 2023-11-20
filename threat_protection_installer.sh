#!/bin/bash

# Funzione per l'installazione di Fail2ban su Arch Linux
install_fail2ban_arch() {
    sudo pacman -Syu --noconfirm fail2ban
    sudo systemctl enable fail2ban
    sudo systemctl start fail2ban
    echo "Fail2ban è stato installato e avviato su Arch Linux."
}

# Funzione per l'installazione di ClamAV su Arch Linux
install_clamav_arch() {
    sudo pacman -Syu --noconfirm clamav
    sudo freshclam  # Aggiornamento delle definizioni dei virus
    sudo systemctl enable clamav-freshclam
    sudo systemctl start clamav-freshclam
    sudo systemctl enable clamav-clamd
    sudo systemctl start clamav-clamd
    echo "ClamAV è stato installato e avviato su Arch Linux."
}

# Funzione per l'installazione di Fail2ban su Debian/Ubuntu
install_fail2ban_debian() {
    sudo apt update
    sudo apt install -y fail2ban
    sudo systemctl enable fail2ban
    sudo systemctl start fail2ban
    echo "Fail2ban è stato installato e avviato su Debian/Ubuntu."
}

# Funzione per l'installazione di ClamAV su Debian/Ubuntu
install_clamav_debian() {
    sudo apt update
    sudo apt install -y clamav clamav-daemon
    sudo freshclam  # Aggiornamento delle definizioni dei virus
    sudo systemctl enable clamav-daemon
    sudo systemctl start clamav-daemon
    echo "ClamAV è stato installato e avviato su Debian/Ubuntu."
}

# Funzione per l'installazione di Fail2ban su Fedora
install_fail2ban_fedora() {
    sudo dnf makecache
    sudo dnf install -y fail2ban
    sudo systemctl enable fail2ban
    sudo systemctl start fail2ban
    echo "Fail2ban è stato installato e avviato su Fedora."
}

# Funzione per l'installazione di ClamAV su Fedora
install_clamav_fedora() {
    sudo dnf makecache
    sudo dnf install -y clamav clamav-update
    sudo freshclam  # Aggiornamento delle definizioni dei virus
    sudo systemctl enable clamd@scan
    sudo systemctl start clamd@scan
    echo "ClamAV è stato installato e avviato su Fedora."
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
        install_fail2ban_debian
        install_clamav_debian
        ;;
    2)
        install_fail2ban_fedora
        install_clamav_fedora
        ;;
    3)
        install_fail2ban_arch
        install_clamav_arch
        ;;
    *)
        echo "Selezione non valida. Uscita."
        exit 1
        ;;
esac
