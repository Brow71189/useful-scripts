#!/bin/bash        
if [ -z "$1" ]; then 
    echo usage: $0 directory
    exit
fi
git clone "github.com:Brow71189/$1"
if [ $? -eq 0 ]; then
    cd "$1"
    git branch --set-upstream-to=origin/master
    git remote add upstream "https://github.com/nion-software/$1"
    echo added "https://github.com/nion-software/$1 as upstream"
    cd ..
else
    git clone "https://github.com/nion-software/$1"
fi

