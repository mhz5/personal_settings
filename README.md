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


### SSH Keys
#### For Multiple Github accounts
https://gist.github.com/jexchan/2351996

### Hibernate on PopOS
Make sure Swap Partition is not encrypted.

```
DEVICE_NAME=/dev/<NAME_OF_DEVICE>
sudo swapoff -a
sudo cryptsetup remove /dev/mapper/cryptswap
sudo vim /etc/crypttab
# remove the line for $DEVICE_NAME
sudo mkswap $DEVICE_NAME
sudo swapon $DEVICE_NAME
```

Add the device to fstab file

```
sudo vim /etc/fstab
# Replace /dev/mapper/cryptswap with UUID=<DEVICE_UUID>
# It line should look like this:
# UUID=9eef9d8e-2994–4d1d-bae7–91edbe353cb2 none swap defaults 0 0

sudo kernelstub -a "resume=UUID=9eef9d8e-2994–4d1d-bae7–91edbe353cb2"
echo "RESUME=UUID=9eef9d8e-2994–4d1d-bae7–91edbe353cb2" >> /etc/initramfs-tools/conf.d/resume
sudo update-initramfs -u
```

[More info here](https://pop-planet.info/forums/threads/guide-to-hibernate-answer-is-a-guide.426/)

### Boot
DO NOT USE GRUB WITH POP OS

