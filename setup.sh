#!/bin/bash

# Function to check if running on Windows
is_windows() {
    [[ -n "$WINDIR" ]] || [[ -n "$windir" ]]
}

# Function to update the repository
update_repository() {
    echo "Updating repository..."
    bash update.sh
    echo "Repository updated successfully!"
}

# Main script
clear
echo

if is_windows; then
    # Windows-specific setup
    echo -e "\033[32m\033[1m{───────────────────────────────────────────────────}"
    echo -e "\033[33m\033[1m   Checking and Installing Required Tools..."
    
    # Check for Python
    python --version >/dev/null 2>&1 || {
        echo "Please install Python from https://www.python.org/"
        exit 1
    }
    
    # Check for pip and install required packages
    pip --version >/dev/null 2>&1 && {
        pip install requests pv colorama
    }
    
    # Check for MPV
    mpv --version >/dev/null 2>&1 || {
        echo "Please install MPV from https://mpv.io/"
        echo "And make sure it's added to your system PATH"
        exit 1
    }
    
else
    # Original Termux setup
    pkg install pv -y >/dev/null 2>&1
    echo -e "\033[32m\033[1m{───────────────────────────────────────────────────}"
    echo -e "\033[33m\033[1m   Installing All Required Packages! Please Wait..." | pv -qL 10
    apt update                    
    apt upgrade -y 
    pkg install python -y 
    pkg install cmatrix -y 
    pkg install pv -y 
    apt install figlet -y  
    apt install ruby -y 
    apt install mpv -y 
    pip install lolcat 
    pip install random 
    pip install requests 
    pkg install python2 -y 
    pkg install termux-api -y 
    termux-setup-storage
fi

echo -e "\033[31m\033[1m        INSTALLATION COMPLETED \033[32m[\033[36m✓\033[32m]"
echo -e "\033[33m\033[1m]────────────────────────────────────────────["

# Setup directory structure
mkdir -p Song NETWORK
mv Access-Granted.mp3 Jarvis2.mp3 JARVIS.mp3 sound_effect.py Song/ 2>/dev/null
mv network.py NETWORK/ 2>/dev/null

# Prompt user for update
read -p "Do you want to update the repository now? (y/n): " choice
if [ "$choice" = "y" ]; then
    update_repository
fi

# Run login script
bash login.sh

