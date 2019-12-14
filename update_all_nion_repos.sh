#! /bin/bash

declare -a arr=( "nionutils" "niondata" "nionui" "nionswift" "nionswift-io" "nionswift-instrumentation-kit" 
"nionswift-video-capture" "eels-analysis" "experimental" "nionswift-usim" )

for name in "${arr[@]}";
do
   echo "$name:"
   echo
   cd "$name"
   if [ $? -eq 0 ]; then
       git checkout master && ( git pull upstream master && git push ) || git pull
       cd ..
   fi
   echo
   echo
done
