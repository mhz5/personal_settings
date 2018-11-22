### Scripts
~/Scripts

contains scripts to open applications and resize windows.

### Chrome
Tab to window extension: https://chrome.google.com/webstore/detail/tab-to-windowpopup-keyboa/adbkphmimfcaeonicpmamfddbbnphikh/related?hl=en

Chrome keyboard shortcuts (Shortkeys): https://chrome.google.com/webstore/detail/shortkeys-custom-keyboard/logpjaacgmcbpdkdchjiaagddngobkck/related?hl=en

### Remap keyboard
Layouts stored here:
/usr/share/X11/xkb/symbols

### Switch Caps Lock and Escape
https://askubuntu.com/questions/363346/how-to-permanently-switch-caps-lock-and-esc

### Copy to clipboard in terminal
sudo apt-get install xclip

In .bashrc:
alias copy="xclip -selection clipboard"

### Swap ESC and CAPSLOCK
sudo apt-get install dconf-tools
dconf-editor
navigate to org >> gnome >> desktop >> input-sources
xkb-options
'caps:swapescape'

### Install apps to be opened by application launchers
Create this file:
~/.local/share/applications/Postman.desktop

Use the content below in the above file:

[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=YOUR_INSTALL_DIR/Postman/app/Postman %U
Icon=YOUR_INSTALL_DIR/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;

