#!/usr/bin/env bash

THEME_COLOR='\033[0;36m' # Cyan
NC='\033[0m'             # No Color
RED='\033[0;31m'
YELLOW='\033[1;33m'

if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO_ID=$ID
    DISTRO_LIKE=$ID_LIKE
else
    DISTRO_ID="unknown"
fi

case "$DISTRO_ID" in
    *omarchy*|*arch*)
        THEME_COLOR='\033[0;32m'
        DISTRO_NAME="Arch / Omarchy Linux"
        ;;
    *kali*)
        THEME_COLOR='\033[0;34m'
        DISTRO_NAME="Kali Linux"
        ;;
    *ubuntu*|*debian*)
        THEME_COLOR='\033[0;33m'
        DISTRO_NAME="Debian / Ubuntu"
        ;;
    *fedora*)
        THEME_COLOR='\033[1;34m'
        DISTRO_NAME="Fedora"
        ;;
    *)
        THEME_COLOR='\033[0;36m'
        DISTRO_NAME="Linux"
        ;;
esac

# ==========================================
# 2. HELPER FUNCTIONS FOR MAINTENANCE Tasks
# ==========================================

update_packages() {
    echo -e "\n${YELLOW}[+] Updating Core System Packages...${NC}"
    # Detect the correct package manager and execute upgrade
    if command -v yay &> /dev/null; then
        yay -Syu
    elif command -v pacman &> /dev/null; then
        sudo pacman -Syu
    elif command -v apt-get &> /dev/null; then
        sudo apt-get update && sudo apt-get dist-upgrade -y
    elif command -v dnf &> /dev/null; then
        sudo dnf upgrade --refresh -y
    elif command -v zypper &> /dev/null; then
        sudo zypper refresh && sudo zypper update -y
    else
        echo -e "${RED}Error: Supported package manager not found!${NC}"
    fi
}

update_flatpaks() {
    if command -v flatpak &> /dev/null; then
        echo -e "\n${YELLOW}[+] Updating Flatpak Applications...${NC}"
        flatpak update -y
    fi
}

update_firmware() {
    if command -v fwupdmgr &> /dev/null; then
        echo -e "\n${YELLOW}[+] Checking Firmware & BIOS Updates...${NC}"
        fwupdmgr refresh
        fwupdmgr get-updates
        # Safe bypass for small laptop NVRAM blocks
        fwupdmgr update --no-history
    fi
}

system_cleanup() {
    echo -e "\n${YELLOW}[+] Cleaning up cached/orphaned packages...${NC}"
    if command -v yay &> /dev/null || command -v pacman &> /dev/null; then
        # Remove orphaned packages on Arch
        if [ -n "$(pacman -Qtdq)" ]; then
            sudo pacman -Rns $(pacman -Qtdq)
        else
            echo "No orphaned packages to clear."
        fi
    elif command -v apt-get &> /dev/null; then
        sudo apt-get autoremove -y && sudo apt-get autoclean
    elif command -v dnf &> /dev/null; then
        sudo dnf autoremove -y
    fi
    
    # Optional: Clear user cache logs
    if command -v flatpak &> /dev/null; then
        flatpak uninstall --unused -y
    fi
}

# ==========================================
# 3. INTERACTIVE MENU INTERFACE
# ==========================================

clear
echo -e "${THEME_COLOR}=========================================${NC}"
echo -e "${THEME_COLOR}       UNIVERSAL LINUX MAINTENANCE tool  ${NC}"
echo -e "${THEME_COLOR}=========================================${NC}"
echo -e "Detected System: ${THEME_COLOR}$DISTRO_NAME${NC}\n"

echo -e "Select an option:"
echo -e "1) ${THEME_COLOR}Standard Update${NC} (Core Packages + Drivers)"
echo -e "2) ${THEME_COLOR}Full-Scale Update${NC} (Packages + Flatpaks + Firmware)"
echo -e "3) ${THEME_COLOR}System Optimization & Cleanup${NC} (Remove leftover junk)"
echo -e "4) ${THEME_COLOR}Exit${NC}"
echo -e ""
read -p "Enter your choice [1-4]: " CHOICE

case "$CHOICE" in
    1)
        update_packages
        ;;
    2)
        update_packages
        update_flatpaks
        update_firmware
        ;;
    3)
        system_cleanup
        ;;
    4)
        echo -e "\nExiting. Stay safe!"
        exit 0
        ;;
    *)
        echo -e "\n${RED}Invalid option selected.${NC}"
        exit 1
        ;;
esac

echo -e "\n${THEME_COLOR}=========================================${NC}"
echo -e "${THEME_COLOR}          Task completed smoothly!       ${NC}"
echo -e "${THEME_COLOR}=========================================${NC}"
