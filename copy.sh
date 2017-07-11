#!/bin/bash

if [[ ! -e ~/.bashrc ]] ; then
    echo "There is no bashrc in your home dir to copy from."
    exit 1
fi
    
sed '/export.*\(pass\|key\|user\)/I s/=.*$/=/' ~/.bashrc > bashrc
