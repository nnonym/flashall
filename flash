#!/bin/bash

while :
do
    clear
    echo '''
     _____ _        _    ____  _   _    _    _     _     
    |  ___| |      / \  / ___|| | | |  / \  | |   | |    
    | |_  | |     / _ \ \___ \| |_| | / _ \ | |   | |    
    |  _| | |___ / ___ \ ___) |  _  |/ ___ \| |___| |___ 
    |_|   |_____/_/   \_\____/|_| |_/_/   \_\_____|_____|'''
    echo '--------------------'
    echo '1) ISO menu'
    echo '2) Flash .img file'
    echo '3) Flash .dmg file'
    echo '--------------------'
    echo '0) Exit'
    echo '--------------------'
    printf 'flash@ll~> '
    read flashall
    if [[ "$flashall" == "1" ]]; then
        clear
        echo "ISO menu"
        echo '--------------------'
        echo '1) Flash Windows .iso'
        echo '2) Flash Linux .iso'
        echo '3) Flash BSD .iso'
        echo '--------------------'
        printf 'flash@ll~/iso~> '
        read flashiso
        if [[ "$flashiso" == "1" ]]; then
            clear
            ls -l /dev/sd*
            printf 'Choose device: '
            read devicew
            printf 'Choose filesystem[NTFS/FAT]: '
            read fs
            printf 'Windows .iso path: '
            read windowsisopath
            woeusb --tgt-fs $fs --device $windowsisopath $devicew
            clear
            echo 'Complete! Have a nice day!'
        elif [[ "$flashiso" == "2" ]]; then
            clear
            ls -l /dev/sd*
            printf 'Choose device: '
            read devicel
            printf 'Linux .iso path: '
            read linuxisopath
            dd if=$linuxisopath of=$devicel && sync
            clear
            echo 'Complete! Have a nice day!'
        elif [[ "$flashiso" == "3" ]]; then
            clear
            ls -l /dev/sd*
            printf 'Choose device: '
            read deviceb
            printf 'BSD .iso path: '
            read BSDisopath
            dd if=$BSDisopath of=$deviceb && sync
            clear
            echo 'Complete! Have a nice day!'
        fi
    elif [[ "$flashall" == "2" ]]; then
        clear
        ls -l /dev/sd*
        printf 'Choose device: '
        read devicei
        printf '.img path: '
        read imgpath
        dd if=$imgpath of=$devicei && sync
        clear
        echo 'Complete! Have a nice day!'
    elif [[ "$flashall" == "3" ]]; then
        #hackintosh instructions on https://github.com/nnonym/Hackintosh-linux-installer
        clear
        printf '.dmg path(without .dmg): '
        read dmgpath
        ls -l /dev/sd*
        printf 'Choose device: '
        read deviced
        dmg2img $dmgpath.dmg $dmgpath.iso
        dd if=$dmgpath.iso of=$deviced && sync
        clear
        echo 'Complete! Have a nice day!'
    elif [[ "$flashall" == "0" ]]; then
        clear
        echo 'Goodbye! Have a nice day!'
        break
    fi
done
