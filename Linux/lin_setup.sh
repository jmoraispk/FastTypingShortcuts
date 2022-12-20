# !/bin/bash

# Make sure this script is executed in its directory:
echo "Warning! Execute this script in its directory!"

# Part 1: the Basic shortcuts without modifiers work flawlessly
# Based on: https://clay-atlas.com/us/blog/2021/07/02/linux-en-map-up-down-left-right-xmodmap/

# 1.1 - xcape is needed to set a new modifier like AltR
# 1-2 - xmodmap is already supported my linux, and we will set our new 
#       key combinations in there
# 1.3 - the rest of the commands are practically only to make the script 

# DEBUG: execute at startup. Note, you can execute ./xmodmap.sh to test 
#        whether the keybindings are working.

# keycode is the code the key raises when pressed. keysyum is just a 
# link from a name to an actual function.
# to find keycodes, execude "xev" on the terminal

# See more keysyms here:
# https://wiki.linuxquestions.org/wiki/List_of_keysyms
# https://wiki.linuxquestions.org/wiki/List_of_Keysyms_Recognised_by_Xmodmap

sudo apt install -y xcape
chmod +x xmodmap.sh
AUTOSTART_DIR=~/.config/autostart
# check if directory already exists and create if it doesn't.
mkdir -p $AUTOSTART_DIR
chmod +x xmodmap.desktop
cp xmodmap.desktop AUTOSTART_DIR
cp xmodmap.sh ~
cp .xmodmap ~
./xmodmap.sh

# Seting up keyrate
# 170 ms between key repetitions, 59 repetitions per second ~ 17ms between repetitions
# the command is in x
# xset r rate 170 59 # (IT's IN xmodmap.sh by default!)
# TODO: in the future, put here and append automatically - that way, all parameters are in
# the same file.


# Part 2: when we want to do map to Alt + ... key combinations like 
#         Shift + ... or Ctrl + Shift + ..., 

# xmodmap does not work for this because are existing keys on the 
# keyboard, not modified keys

# AutoKey: https://askubuntu.com/questions/251479/how-to-bind-ctrlarrows-to-home-and-end-keys-xmodmap-does-not-work/303978#303978

# Other stuff tried that didn't work:
# - espanso
# - AHK on wine (with and without winetricks)
# - Python, except:
# https://unix.stackexchange.com/questions/696526/a-simple-global-keyboard-shortcut-handler
# - xbindkeys with xkvbd is too slow and unreliable.

# AHK for Linux (not there yet..)  https://github.com/phil294/AHK_X11
