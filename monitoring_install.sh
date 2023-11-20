#!/bin/bash

# Funzione per l'installazione di Nagios su Debian/Ubuntu
install_nagios_debian() {
    sudo apt update
    sudo apt install -y nagios3
    echo "Nagios è stato installato su Debian/Ubuntu."
    # Configurazione aggiuntiva di Nagios può essere necessaria
}

# Funzione per l'installazione di Zabbix su Debian/Ubuntu
install_zabbix_debian() {
    sudo apt update
    sudo apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-agent
    echo "Zabbix è stato installato su Debian/Ubuntu."
    # Configurazione aggiuntiva di Zabbix può essere necessaria
}

# Funzione per l'installazione di rsyslog su Debian/Ubuntu
install_rsyslog_debian() {
    sudo apt update
    sudo apt install -y rsyslog
    echo "Rsyslog è stato installato su Debian/Ubuntu."
    # Configurazione aggiuntiva di rsyslog può essere necessaria
}

# Funzione per l'installazione di Nagios su Fedora
install_nagios_fedora() {
    sudo dnf makecache
    sudo dnf install -y nagios
    echo "Nagios è stato installato su Fedora."
    # Configurazione aggiuntiva di Nagios può essere necessaria
}

# Funzione per l'installazione di Zabbix su Fedora
install_zabbix_fedora() {
    sudo dnf makecache
    sudo dnf install -y zabbix-server-mysql zabbix-web-mysql zabbix-agent
    echo "Zabbix è stato installato su Fedora."
    # Configurazione aggiuntiva di Zabbix può essere necessaria
}

# Funzione per l'installazione di rsyslog su Fedora
install_rsyslog_fedora() {
    sudo dnf makecache
    sudo dnf install -y rsyslog
    echo "Rsyslog è stato installato su Fedora."
    # Configurazione aggiuntiva di rsyslog può essere necessaria
}

# Funzione per l'installazione di Nagios su Arch Linux
install_nagios_arch() {
    sudo pacman -Syu --noconfirm nagios
    echo "Nagios è stato installato su Arch Linux."
    # Configurazione aggiuntiva di Nagios può essere necessaria
}

# Funzione per l'installazione di Zabbix su Arch Linux
install_zabbix_arch() {
    sudo pacman -Syu --noconfirm zabbix-server-mysql zabbix-web-mysql zabbix-agent
    echo "Zabbix è stato installato su Arch Linux."
    # Configurazione aggiuntiva di Zabbix può essere necessaria
}

# Funzione per l'installazione di rsyslog su Arch Linux
install_rsyslog_arch() {
    sudo pacman -Syu --noconfirm rsyslog
    echo "Rsyslog è stato installato su Arch Linux."
    # Configurazione aggiuntiva di rsyslog può essere necessaria
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
        echo "1. Nagios"
        echo "2. Zabbix"
        echo "3. Rsyslog"
        read -p "Inserisci il numero corrispondente allo strumento da installare: " tool
        case $tool in
            1) install_nagios_debian ;;
            2) install_zabbix_debian ;;
            3) install_rsyslog_debian ;;
            *) echo "Selezione non valida. Uscita." && exit 1 ;;
        esac
        ;;
    2)
        echo "Strumenti disponibili:"
        echo "1. Nagios"
        echo "2. Zabbix"
        echo "3. Rsyslog"
        read -p "Inserisci il numero corrispondente allo strumento da installare: " tool
        case $tool in
            1) install_nagios_fedora ;;
            2) install_zabbix_fedora ;;
            3) install_rsyslog_fedora ;;
            *) echo "Selezione non valida. Uscita." && exit 1 ;;
        esac
        ;;
    3)
        echo "Strumenti disponibili:"
        echo "1. Nagios"
        echo "2. Zabbix"
        echo "3. Rsyslog"
        read -p "Inserisci il numero corrispondente allo strumento da installare: " tool
        case $tool in
            1) install_nagios_arch ;;
            2) install_zabbix_arch ;;
            3) install_rsyslog_arch ;;
            *) echo "Selezione non valida. Uscita." && exit 1 ;;
        esac
        ;;
    *)
        echo "Selezione non valida. Uscita."
        exit 1
        ;;
esac
