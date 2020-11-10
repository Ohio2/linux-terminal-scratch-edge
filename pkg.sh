#!/bin/sh
zip -q Scratch.zip * 2>/dev/null
mv Scratch.zip Scratch.sb3 2>/dev/null
echo -e '\e[36mPackaged and ready to be inputed to \e[93mScratch'
echo -e '\e[32mFor updates, please visit \e[94mhttps://github.com/Ohio2/linux-terminal-scratchbuilder3 \e[39mor \e[93mhttps://scratch.mit.edu/projects/434652272/'
