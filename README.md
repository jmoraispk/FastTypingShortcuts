# In the progress of making this exactly like thw Windows counterpart

AHK really makes works well in Windows. 

In Linux, there are a couple of ways to replace it.

**Note: currently I'm using xmodmap to change the RAlt to an Escape Modifier.**
**I might need to turn that off to have these methods work**


Way 1: Via AHK community tool on Linux

Call a key combination based on other key combinations.



Way 2: Via LINUX integrated tools

xet key KEYSTROKE_SPECIFIER
or
xdotool key KEYSTROKE_SPECIFIER

For xet see:
    https://linux.die.net/man/1/xte
For xdotoll see:
    https://unix.stackexchange.com/questions/331395/unable-to-simulate-ctrlshiftfnf10-key-press
    https://unix.stackexchange.com/questions/14879/how-to-inject-keystrokes-via-a-shell-script/14883#14883

Use:




Each OS folder has its own readme inside. More information is provided there.