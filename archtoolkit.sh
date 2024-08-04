#!/bin/bash

echo """
.---..---. .---..-. .-..-.,-..-..---.
| | || |-< | |  | |=| || . < | |`| |'
`-^-'`-'`-'`---'`-' `-'`-'`-'`-' `-' 
                                     
MADE BY Mr.2602
"""

show_categories() {
    echo "{1} Information Gathering"
    echo "{2} Vulnerability Analysis"
    echo "{3} Web Application Analysis"
    echo "{4} Database Assessment"
    echo "{5} Password Attacks"
    echo "{6} Wireless Attacks"
    echo "{7} Networking"
    echo "{8} Exploitation Tools"
    echo "{9} Sniffing & Spoofing"
    echo "{10} Post Exploitation"
    echo "{99} ComeBack"
}

show_tools() {
    case $1 in
        1)
            echo "{1} Maltego"
            echo "{2} TheHarvester"
            ;;
        2)
            echo "{1} OpenVAS"
            echo "{2} Nessus"
            ;;
        3)
            echo "{1} Burp Suite"
            echo "{2} Nikto"
            ;;
        4)
            echo "{1} sqlmap"
            echo "{2} DB Pwning"
            ;;
        5)
            echo "{1} John the Ripper"
            echo "{2} Hydra"
            ;;
        6)
            echo "{1} Aircrack-ng"
            echo "{2} Reaver"
            ;;
        7)
            echo "{1} NMap"
            echo "{2} RustScan"
            ;;
        8)
            echo "{1} Metasploit Framework"
            echo "{2} Armitage"
            ;;
        9)
            echo "{1} Wireshark"
            echo "{2} Bettercap"
            ;;
        10)
            echo "{1} Empire"
            echo "{2} Metasploit"
            ;;
        99)
            return
            ;;
        *)
            echo "Wrong Choice. Please Select a Valid Option."
            ;;
    esac
    echo "{99} ComeBack"
}

install_tool() {
    case $1 in
        1)
            case $2 in
                1)
                    yay -S maltego
                    ;;
                2)
                    yay -S theharvester
                    ;;
            esac
            ;;
        2)
            case $2 in
                1)
                    yay -S openvas
                    ;;
                2)
                    yay -S nessus
                    ;;
            esac
            ;;
        3)
            case $2 in
                1)
                    yay -S burpsuite
                    ;;
                2)
                    yay -S nikto
                    ;;
            esac
            ;;
        4)
            case $2 in
                1)
                    pacman -S sqlmap
                    ;;
                2)
                    yay -S dbpwn
                    ;;
            esac
            ;;
        5)
            case $2 in
                1)
                    pacman -S john
                    ;;
                2)
                    pacman -S hydra
                    ;;
            esac
            ;;
        6)
            case $2 in
                1)
                    pacman -S aircrack-ng
                    ;;
                2)
                    pacman -S reaver
                    ;;
            esac
            ;;
        7)
            case $2 in
                1)
                    pacman -S nmap
                    ;;
                2)
                    yay -S rustscan
                    ;;
            esac
            ;;
        8)
            case $2 in
                1)
                    pacman -S metasploit
                    ;;
                2)
                    yay -S armitage
                    ;;
            esac
            ;;
        9)
            case $2 in
                1)
                    pacman -S wireshark-gtk
                    ;;
                2)
                    yay -S bettercap
                    ;;
            esac
            ;;
        10)
            case $2 in
                1)
                    yay -S empire
                    ;;
                2)
                    pacman -S metasploit
                    ;;
            esac
            ;;
        *)
            echo "Wrong Tool. Please Select a Valid Tool."
            ;;
    esac
}

while true; do
    show_categories
    read -p "Select a Category (q for exiting): " category

    if [[ "$category" == "q" ]]; then
        break
    elif [[ "$category" == "99" ]]; then
        continue
    else
        while true; do
            show_tools "$category"
            read -p "Choose a Tool (say 99 to comeback): " tool_choice

            if [[ "$tool_choice" == "99" ]]; then
                break
            elif [[ "$tool_choice" =~ ^[0-9]+$ ]]; then
                install_tool "$category" "$tool_choice"
            else
                echo "ERROR! TRY AGAIN."
            fi
        done
    fi
done
