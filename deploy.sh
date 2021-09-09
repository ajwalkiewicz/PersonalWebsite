#!/bin/bash
# deploy website script

current_date=$(date -u +"%Y%m%d_%H%M%S")

function cmd(){
    echo $1
    $1
    return $?
}

function create_backup(){
    cmd "sudo mv /var/www/html /var/www/html_$current_date"
    cmd "sudo mkdir /var/www/html/"
}

function upload(){
    cmd "sudo cp -r * /var/www/html/"
}

create_backup
upload

exit 0