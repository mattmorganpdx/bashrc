#!/bin/bash

if [[ -e ~/.bashrc ]] ; then
    BACKUP_FILE=bashrc.$(date +%s)
    echo "Backing up your current rc to ${BACKUP_FILE}" 
    cp ~/.bashrc ~/${BACKUP_FILE:?}
fi

cp bashrc ~/.bashrc && echo "bashrc copied to your home dir."
