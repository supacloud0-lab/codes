#!/bin/bash

# Colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

show_menu() {
    clear
    echo -e "${CYAN}---------------------------------------------------------------------${NC}"
    echo -e "${GREEN} __  __    ____   __   __  _____    _                 __    __  ______${NC}"
    echo -e "${GREEN}|  \/  | |___ \   \ \ / / |  __ \  | |         /\      \ \  / /  |___  /${NC}"
    echo -e "${GREEN}| \  / |   __) |   \ V /  | |__) | | |        /  \      \ \/ /      / / ${NC}"
    echo -e "${GREEN}| |\/| |  |__ <     > <   |  ___/  | |       / /\ \      \  /      / /  ${NC}"
    echo -e "${GREEN}| |  | |  ___) |   / . \  | |      | |____  / ____ \     | |      / /__ ${NC}"
    echo -e "${GREEN}|_|  |_| |____/   /_/ \_\ |_|      |______|/_/    \_\    |_|     /_____|${NC}"
    echo -e "${CYAN}---------------------------------------------------------------------${NC}"
    echo -e " 1. PUFFERPANEL INSTALLER-UBUNTU"
    echo -e " 2. SOON!"
    echo -e " 0. EXIT"
    echo -e "${CYAN}---------------------------------------------------------------------${NC}"
    read -p "Apna option select karein [0-2]: " choice
}

install_pufferpanel_ubuntu() {
    echo -e "\n${GREEN}[+] PUFFERPANEL-UBUNTU INSTALLER STARTING...${NC}"
    
    # Check root privileges
    if [ "$EUID" -ne 0 ]; then
      echo -e "${RED}[!] Kripya is script ko root user (sudo) ke sath run karein.${NC}"
      exit 1
    fi

    # OPENING INSTALLER
    bash <(curl -s https://raw.githubusercontent.com/supacloud0-lab/pufferpanel-installer/main/installer.sh)

    echo -e "\n${GREEN}[✓] PUFFERPANEL OPEN HO CHUKA HE!${NC}"
    
    
    read -p "Wapas menu par jane ke liye Enter dabayein..."
}

while true; do
    show_menu
    case $choice in
        1)
            install_pufferpanel_ubuntu
            ;;
        2)
            echo -e "\n${CYAN}Ye feature jald hi aayega!${NC}"
            sleep 2
            ;;
        0)
            echo -e "\n${GREEN}Alvida! Script band ki ja rahi hai.${NC}"
            exit 0
            ;;
        *)
            echo -e "\n${RED}[!] Galat option select kiya, kripya 0, 1 ya 2 chunein.${NC}"
            sleep 2
            ;;
    esac
done
