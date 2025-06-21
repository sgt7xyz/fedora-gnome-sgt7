#!/usr/bin/env bash

declare script_dir_path
script_dir_path="$(dirname -- "$0")"

declare script_dir
script_dir="$(realpath "$script_dir_path")"

source "$script_dir"/functions.sh

# Menu for selecting the installation steps
while true; do
    echo 'Please select an option:'
    echo '1. Backup configs'
    echo '2. Update DNF for faster downloads'
    echo '3. Upgrade Fedora'
    echo '4. Update firmware'
    echo '5. Install and Remove packages (Will be prompted for root/admin password)'
    echo '6. Enable Flathub repository'
    echo '7. Create custom directories in your home directory'
    echo '8. Install fonts'
    echo '9. Copy wallpapers to your ~/Pictures/wallpapers directory'
    echo '10. Customize Gnome settings'
    echo '11. Configure Vim'
    echo '12. Install development tools'
    echo '13. Install codecs'
    echo '14. Install VLC and multimedia codecs'
    echo '15. Install and enable firewalld'
    echo '16. Configure swappiness'
    echo '17. Speed up boot time'
    echo '18. Install Numix theme and icons'
    echo '19. Install VSCode'
    echo '20. Configure Git'
    echo '21. Execute all'
    echo '0. Exit'
    echo -n 'Enter the number of your choice: '
    read -r choice

    case $choice in
        1)  
            backup_configs
            ;; 
            
        2)  
            update_dnf
            ;; 

        3)  
            upgrade_fedora
            ;; 
    
        4)  
            update_firmware
            ;;

        5)  
            install_packages
            remove_packages
            ;;
        
        6)  
            enable_flathub
            ;;
        
        7)  
            create_directories
            ;;
            
        8)  
            install_font
            ;;
            
        9)  
            copy_wallpapers
            ;;

        10) 
            customize_gnome
            ;;
        
        11) 
            configure_vimrc
            ;;

        12) 
            install_development_tools
            ;;

        13) 
            install_codecs
            ;;

        14) 
            install_vlc_multimedia_codecs
            ;;

        15) 
            install_firewalld_enable
            ;;

        16) 
            configure_swappiness
            ;;

        17) 
            speed_boot_time
            ;;

        18) 
            install_numix_theme
            ;;

        19) 
            install_vscode
            ;;

        20) 
            configure_git
            ;;

        21) 
            backup_configs
            update_dnf
            upgrade_fedora
            update_firmware
            install_packages
            remove_packages
            create_directories
            install_font
            copy_wallpapers
            customize_gnome
            configure_vimrc
            enable_flathub
            install_development_tools
            install_codecs
            install_vlc_multimedia_codecs
            install_firewalld_enable
            configure_swappiness
            speed_boot_time
            install_numix_theme
            install_vscode
            configure_git
            ;;

        0)
            echo 'Exiting.'
            break
            ;;
        *)
            echo 'Invalid option. Please try again.'
            ;;
    esac
done