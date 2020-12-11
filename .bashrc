export PERSONAL_SETTINGS_DIR="$HOME/personal_settings"
source $PERSONAL_SETTINGS_DIR/.bashrc_default

# To generate large ASCII headers: http://patorjk.com/software/taag/#p=display&h=0&v=0&c=bash&f=Small%20Slant

#     ___    ___  ______   __ __     
#    / _ \  / _ |/_  __/  / // /  ___
#   / ___/ / __ | / /    / _  /  (_-<
#  /_/    /_/ |_|/_/    /_//_/  /___/

export GOPATH="/home/muke/go"
export PATH="/home/muke/Applications/GoLand/bin:/home/muke/Applications/WebStorm/bin:/snap/bin:$PATH"


# Map Interrupt to Ctrl-L.
stty intr ^l
# Set the Command Prompt Prefix.
export PS1="\W 亹"


#    __  __  __    _    __   _   __        
#   / / / / / /_  (_)  / /  (_) / /_  __ __
#  / /_/ / / __/ / /  / /  / / / __/ / // /
#  \____/  \__/ /_/  /_/  /_/  \__/  \_, / 
#                                   /___/  
                                                  
# Std input to this command is copied to clipboard.
alias copy="xclip -selection clipboard"
alias hibernate="systemctl hibernate"
# Edit .bashrc and .vimrc.
bashrc() {
  vim $PERSONAL_SETTINGS_DIR/.bashrc;
  source $PERSONAL_SETTINGS_DIR/.bashrc;
  git add .; git commit -m "update"; git push;
}
vimrc() {
  vim $PERSONAL_SETTINGS_DIR/.vimrc;
  git add .; git commit -m "update"; git push;
}


#    _____   _   __ 
#   / ___/  (_) / /_
#  / (_ /  / / / __/
#  \___/  /_/  \__/ 

alias h="ls"
alias ht="git status"
alias th="git log"
alias c="cd .."
gcr() {
  msg=$1
  git add .
  git commit -m $msg
}


#     _  __               _                __    _            
#    / |/ / ___ _ _  __  (_)  ___ _ ___ _ / /_  (_) ___   ___ 
#   /    / / _ `/| |/ / / /  / _ `// _ `// __/ / / / _ \ / _ \
#  /_/|_/  \_,_/ |___/ /_/   \_, / \_,_/ \__/ /_/  \___//_//_/
#                           /___/                             

export FDA_WEB="$GOPATH/src/bboy-jam-assistant"
alias aoei="cd /home/muke/go/src/bboy-jam-assistant"


#    ____   __    __            
#   / __ \ / /_  / /  ___   ____
#  / /_/ // __/ / _ \/ -_) / __/
#  \____/ \__/ /_//_/\__/ /_/   

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/muke/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/muke/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/muke/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/muke/Downloads/google-cloud-sdk/completion.bash.inc'; fi

