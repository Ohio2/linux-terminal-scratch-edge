#!/bin/sh
echo -e '\e[94mRepo script.'
echo -e '\e[39m1. Patch \e[91m(requires pkg.sh )\e[39m'
for (( i=5; i>0; i--)); do
  sleep 1 &
  printf "  $i \r"
  wait
done
set input=1 #should be one
if [ input=1 ] #should be one
then 
 mkdir root_repo/
 cd .. 
 cp * repo/root_repo
 cd repo/
 echo -e '\e[96mCopied!'
 cd root_repo/
else
 echo -e '\e[91mError! Something broke! Check the script for more info'
fi 
nano pkg.sh
