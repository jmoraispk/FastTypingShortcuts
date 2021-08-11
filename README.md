# ProductivityOnWindows
Common-sense-based programs and methods to improve productivity in Windows machines.

# Programs

### AutoHotKey
A script that creates shortcuts that are easy to utilize and useful for everyday tasks. The shortcuts are:
  - (Left Arrow), (Right Arrow), (Up Arrow), (Down Arrow) -> (Alt GR) + (I), (Alt GR) +  (J), (Alt GR) + (K), (Alt GR) + (L)
  - (Shift) + (Left, Right) -> (Alt GR) + (W, E)
  - (Ctrl) + (Shift) + (Left, Right) -> (Alt GR) + (S, D)
  - (Ctrl) + (Home) + (Left, Right) -> (Alt GR) + (A, F)

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
  2- Writee: KEYRATE 150 20 
     For 150ms repeat delay, and 20ms of interval between key repeats when the key is pressed.
     
# To make it stick to your Windows
So you don't need to execute the scripts every time you restart the computer, you have to create executables that are started when Windows starts. 
Here is how to compile scripts:

AutoHotKey:
  1. Comes with compiler. Simply right-click the script and choose "Compile script".

KeyRate:
  1. Write the following code in a .ps1 script: 
  ```
  cd 'C:\Users\Morais\Documents\Tools\GOOD KEYS on windows\'
  .\keyrate.exe 170 17
  ```
  2. Use Win-PS2EXE.exe to compile it.
