#!/bin/bash        
if [ -z "$1" ]; then 
    echo usage: $0 directory [directory2] [directory3] [...]
    exit
fi

for dir in "$@"
do
    git clone "github.com:Brow71189/$dir"
    if [ $? -eq 0 ]; then
        cd "$dir"
        git branch --set-upstream-to=origin/master
        git remote add upstream "https://github.com/nion-software/$dir"
        echo added "https://github.com/nion-software/$dir as upstream"
        cd ..
    else
        git clone "https://github.com/nion-software/$dir"
    fi
done
