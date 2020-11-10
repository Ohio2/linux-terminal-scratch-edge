#!/bin/sh
ping github.com -c 1 >/dev/null
echo -e '\e[92mPinged GitHub.com'
git pull 2>/dev/null
echo -e '\e[94mRepo script.'
echo -e '\e[39m1. Patch \e[91m(requires pkg.sh)\e[39m'
echo -e '\e[39m2. Exec pkg.sh without patching \e[91m(requires pkg.sh)\e[39m'
read input
if [ input=1 ] #should be one
then 
 mkdir root_repo/ 2>/dev/null
 cd ..
 cp pkg.sh repo/root_repo
 cd repo/root_repo
# BO Editors
# NANO
# set val.editor.list=1
# nano pkg.sh
# VIM (DEFAULT), DISABLED
# set val.editor.list=2
# vim pkg.sh
# NVIM
# set val.editor.list=3
# nvim pkg.sh
# EMACS
# set val.editor.list=4
# emacs pkg.sh
# EO Editors
echo -e '\e[94mPassing on to pkg.sh (modded, in repo)'
chmod +x pkg.sh ; ./pkg.sh 
chmod -x pkg.sh 2>/dev/null
mv Scratch-Edge.sb3 .. 
cd .. 
rm -rf root_repo 
# -------------------------------------------------------
echo -e '\e[92mSeems Okay'
elif [ input=2 ] #should be two
then
  chmod +x pkg.repo
 ./pkg.repo
else
 echo -e '\e[91mError! Something broke! Check the script for more info, aditionally you could report this to my GitHub'
fi
