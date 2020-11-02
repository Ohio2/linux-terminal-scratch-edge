#!/bin/sh
git pull 2>/dev/null
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
 mkdir root_repo/ 2>/dev/null
 cd .. 
 cp * repo/root_repo 2>/dev/null
 cd repo/
 echo -e '\e[96mCopied!'
 cd root_repo/
else
 echo -e '\e[91mError! Something broke! Check the script for more info'
fi 
echo '#Edit here! No patch guides yet...' >> pkg.sh
# BO Editors
# NANO
# nano pkg.sh
# VIM (DEFAULT)
vim pkg.sh
# NVIM
# nvim pkg.sh
# EMACS
# emacs pkg.sh
# EO Editors
echo -e '\e[94mPassing on to pkg.sh (modded, in repo)'
chmod +x pkg.sh ; ./pkg.sh 
chmod -x pkg.sh 2>/dev/null
mv Scratch-Edge.sb3 .. 
cd .. 
rm -rf root_repo 

