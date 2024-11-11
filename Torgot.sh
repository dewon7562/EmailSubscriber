#!/bin/bash

# Torpot - Automated Newsletter Subscription Tool
# Author: dewon7562
# Copyright: Educational Purpose

# Function to display the menu
display_menu() {
echo '
\033[38;5;51m
╔════════════════════════════════════════════════════════════════════════════╗
║                                                                            ║
║     ✦   ⋆         ★                           ˚    ✦                      ║
║  ████████╗ ██████╗ ██████╗  ██████╗  ██████╗ ████████╗ ██████╗ ██╗  ██╗  ║
║  ╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝ ██╔═══██╗╚══██╔══╝██╔════╝ ██║  ██║  ║
║     ██║   ██║   ██║██████╔╝██║  ███╗██║   ██║   ██║   ███████╗ ███████║  ║
║     ██║   ██║   ██║██╔══██╗██║   ██║██║   ██║   ██║   ╚════██║ ██╔══██║  ║
║     ██║   ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝   ██║   ██████╔╝ ██║  ██║  ║
║     ╚═╝    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   ╚═════╝  ╚═╝  ╚═╝  ║
║                                                                            ║
║      ★               ⋆   ✦           ˚     ★        ⋆        ✦            ║
║                          Created by dewon7562                              ║
╚════════════════════════════════════════════════════════════════════════════╝
\033[0m'
create_banner() {
    local text="$1"
    local author="$2"
    
    # ANSI color codes for light blue
    local LIGHTBLUE='\033[38;5;51m'
    local RESET='\033[0m'
    
    # Stars and sparkles
    local decorations=('✦' '★' '⋆' '˚')
    
    # Print top border
    echo -e "${LIGHTBLUE}╔════════════════════════════════════════════════════════════════════════════╗"
    
    # Print empty line with random stars
    echo -e "║                  ${decorations[$((RANDOM % 4))]}    ${decorations[$((RANDOM % 4))]}                 ${decorations[$((RANDOM % 4))]}              ║"
    
    # Print main text
    echo -e "║                         $text                          ║"
    
    # Print more random stars
    echo -e "║         ${decorations[$((RANDOM % 4))]}         ${decorations[$((RANDOM % 4))]}              ${decorations[$((RANDOM % 4))]}        ${decorations[$((RANDOM % 4))]}           ║"
    
    # Print author
    echo -e "║                     Created by $author                        ║"
    
    # Print bottom border
    echo -e "╚════════════════════════════════════════════════════════════════════════════╝${RESET}"
}

# Usage:
create_banner "TORGOT.SH" "dewon7562"
}

# Function to subscribe to newsletters
subscribe_newsletters() {
    local email=$1
    local newsletters=("newsletter1@example.com" "newsletter2@example.com" "newsletter3@example.com") # Add more as needed

    for newsletter in "${newsletters[@]}"; do
        echo "Subscribing $email to $newsletter..."
        # Simulate subscription (replace with actual subscription command)
        sleep 1
    done
    echo "Subscription process completed for $email."
}

# Main script execution
display_menu
read -p "Email: " target_email
subscribe_newsletters "$target_email"
