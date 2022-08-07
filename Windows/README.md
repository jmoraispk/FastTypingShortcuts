# ProductivityOnWindows
Some methods to improve productivity in Windows machines.

# Programs

### AutoHotKey
A script that creates shortcuts that are easy to utilize and useful for everyday tasks. The shortcuts are:
  - (Left,Right,Up,Down Arrow) -> (RAlt) + (J,L,I,K)
  - (Shift) + (Left, Right) -> (RAlt) + (W, E)
  - (Ctrl) + (Shift) + (Left, Right) -> (RAlt) + (S, D)
  - (Ctrl) + (Home) + (Left, Right) -> (RAlt) + (A, F)
  - Move the mouse to the centre of the primary screen -> (LAlt) + (Space)
  - Other useful ones when Portuguese is enabled as keyboard language but the keyboard is US:
    - (Delete) -> (RAlt) + (ç)
    - (<,>) -> (RAlt) + (comma, period)

### KeyRate
A script that overrides windows key repeat rate and repeat delay. That way, you can navigate with arrows faster, delete faster, ect.

Start repeating the key after 170 milliseconds that it has been pressed the first time, and repeat the pressed key every 17 milliseconds the key is pressed.

Credit for KeyRate: https://6pool.blogspot.com/2017/12/adrenal-for-your-keyrate.html

# How to use
AutoHotKey:
  1. Install
  2. Double clip on an a script (.ahk file).

KeyRate:
  1. Open a cmd in this directory. To open the command prompt in Windows search cmd in the main menu. To navigate, 
  2- Write: ```KEYRATE 150 20 ```
     For 150ms repeat delay, and 20ms of interval between key repeats when the key is pressed.
     
# To make it stick to your Windows
This way you don't need to execute the scripts every time you restart the computer. There are two steps, compiling to an executable and then adding the executable to startup.

1. How to compile scripts:

    - AutoHotKey:
        1. Comes with compiler. Simply right-click the script and choose "Compile script".

    - KeyRate:
        1. Write the following code in a .ps1 script (but change to your own path to this repository): 
        ```
        cd 'C:\Users\Morais\Documents\Tools\ProductivityOnWindows\'
        .\keyrate.exe 160 16
        ```
        2. Use Win-PS2EXE.exe to compile it.


2. How to add those executables startup:
    - Windows 10: simply add them to the "startup" tab in the task manager. 
    - Windows 11: 
      1. Press Win + R
      2. Type ```shell:startup``` and press Enter
      3. Copy the executables to the window that opened.
