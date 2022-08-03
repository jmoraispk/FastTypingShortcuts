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

# See more keysyms here:
# https://wiki.linuxquestions.org/wiki/List_of_keysyms
# https://wiki.linuxquestions.org/wiki/List_of_Keysyms_Recognised_by_Xmodmap

sudo apt install -y xcape
chmod +x xmodmap.sh
mkdir ~/.config/autostart
chmod +x xmodmap.desktop
cp xmodmap.desktop ~/.config/autostart


# Part 2: when we want to do map to Alt + ... key combinations like 
#         Shift + ... or Ctrl + Shift + ..., 

# xmodmap does not work for this because are existing keys on the 
# keyboard, not modified keys

# NOT DONE YET!
# Try:
# Option 1: these 2 together:
# 	https://askubuntu.com/questions/85850/how-to-remap-a-key-combination-to-a-single-key
# 	https://askubuntu.com/questions/834650/remap-a-key-combination-to-another-combination-e-g-superctrlshiftj-ctrl

# Option 2:
#  https://askubuntu.com/questions/5095/typing-using-key-combinations

# Option 3:
# AutoKey: https://askubuntu.com/questions/251479/how-to-bind-ctrlarrows-to-home-and-end-keys-xmodmap-does-not-work/303978#303978


