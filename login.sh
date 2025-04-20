#!/bin/bash

# Function to check if running on Windows
is_windows() {
    [[ -n "$WINDIR" ]] || [[ -n "$windir" ]]
}

# Run the banner
bash banner.sh
echo

# Get login credentials
read -p $'\e[1;32m  Enter \033[33mUsername \033[37mfor \033[32mLogin:\e[0m ' username                
read -p $'\e[1;32m  Enter \033[33mPassword \033[37mfor \033[32mLogin:\e[0m ' password 
echo
echo
read -p $'\033[1m\033[32m  Your \033[0mShell \033[38;5;209mName\033[31m: \033[33m\033[1m ' names

# Set up environment
if is_windows; then
    SHELL_CONFIG="$HOME/.bashrc"
    MOTD_PATH="$HOME/.motd"
else
    cd /usr/etc
    SHELL_CONFIG="bash.bashrc"
    MOTD_PATH="motd"
fi

# Clear existing configs
rm -f "$MOTD_PATH" "$SHELL_CONFIG" 2>/dev/null

# Create new shell configuration
cat <<LOGIN>"$SHELL_CONFIG"
trap '' 2                                          
echo -e "\e[1;32m      
░▒▓█▓▒░      ░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░▒▓███████▓▒░  
░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒▒▓███▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓████████▓▒░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
"

echo -e "\033[31m           ────────────────────────────"
echo -e "\033[33m               Login To \033[32mContinue"
echo -e "\033[31m           ────────────────────────────\n\n"

read -p $'       \e[33m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mUSERNAME FOR LOGIN:\033[32m ' user
read -s -p $'       \e[32m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mPASSWORD FOR LOGIN:\033[33m ' pass                                                

if [[ \$pass == $password && \$user == $username ]]; then
    sleep 3
    clear
    cd "$HOME"
    cd TermuX-Custom/Song
    python sound_effect.py
    clear
    cd "$HOME"
    echo -e "\033[1m\033[33m\nWellcome Back Mr.\n"
    echo -e "
                ███████╗██╗   ██╗██████╗  █████╗      ██╗
                ██╔════╝██║   ██║██╔══██╗██╔══██╗     ██║
                ███████╗██║   ██║██████╔╝███████║     ██║
                ╚════██║██║   ██║██╔══██╗██╔══██║██   ██║
                ███████║╚██████╔╝██║  ██║██║  ██║╚█████╔╝
                ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝
"
    # Check network status
    cd "$HOME/TermuX-Custom/NETWORK"
    python network.py
    cd "$HOME"

    # Set custom prompt with colors that work in both environments
    if is_windows; then
        PS1='\[\033[1;32m\]┌─[\[\033[1;37m\]\t\[\033[1;32m\]]─[\[\033[1;33m\]$names\[\033[1;32m\]]─[\[\033[38;5;209m\]\#\[\033[1;32m\]]\n|\n\[\033[1;32m\]└─[\[\033[1;33m\]\W\[\033[1;32m\]]────►\[\033[1;36m\] '
    else
        PS1='\033[1m\[\e[32m\]\033[1m┌─[\[\e[37m\]\T\[\e[32m\]\033[1m]─────\033[1m\e[1;98m\[[\033[1m\033[37m$names\033[32m]\033[1m\e[0;32m\033[1m───[\033[38;5;209m\#\033[32m]\n|\n\033[1m\e[0;32m\033[1m└─[\[\e[32m\]\e[1;33m\W\[\e[1m\033[32m]\033[1m────►\e[1;36m\033[1m '
    fi
else
    echo -e "\n\e[1;31m  You Entered wrong Details!\n\e[0m"
    sleep 1
    if ! is_windows; then
        cmatrix -L
    fi
fi
trap 2
LOGIN

echo -e "\033[1m\e[1;32m Your Terminal is \033[33mReady \n
       Please \033[31mExit \033[37mand \033[32mLogin again.\e[0m"
echo

