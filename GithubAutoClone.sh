#!/bin/bash

function clonarRepoConToken() {
    echo ''
    read -p ' Nombre del usuario de GitHub: ' USER
    read -p ' Token para el acceso a sus repositorios: ' TOKEN
    REPOS=($(curl -s https://api.github.com/users/$USER/repos -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $TOKEN" | grep -e 'clone_url*' | cut -d \" -f 4))
    for i in ${REPOS[@]};
    do
        git clone $i
    done 
}


function clonarRepo() {
    echo ''
    read -p ' Nombre del usuario de GitHub: ' USER
    REPOS=($(curl -s https://api.github.com/users/$USER/repos -H "Accept: application/vnd.github+json"|grep -e 'clone_url*' | cut -d \" -f 4))
    for i in ${REPOS[@]}
    do
        git clone $i 
    done
}


function menu() {
    echo -e '\n¿Clonar repos con api token? es necesari para repos privados\n'
    echo ' 1) No'
    echo ' 2) Si'
    echo -ne '\n Elija una opción: '
    read OPTION 
    case $OPTION in
    1) clonarRepo ;;
    2) clonarRepoConToken ;;
    *) echo -e 'Ha elejido una opción invalida.\nPor favor intentelo de nuevo.' ;;
    esac
}


function main() {
    menu
}
main