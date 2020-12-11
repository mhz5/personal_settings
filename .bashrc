export PERSONAL_SETTINGS_DIR="$HOME/personal_settings"
# Source the default .bashrc provided by pop os.
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
edit_config_and_push_to_github() {
  edit_config_fn=$1
  cur_dir=$(pwd)
  cd $PERSONAL_SETTINGS_DIR;
  $edit_config_fn;
  echo "Pushing updated config to github..."
  git add .;
  git commit --quiet -m "update" > /dev/null;
  if [[ $? -eq 1 ]]; then
    echo "No changes were made"
    exit
  fi
  git push --quiet;
  if [[ $? -ne 0 ]]; then
    echo "Failed"
  else
    echo "Success"
  fi
  cd $cur_dir
}
_bashrc_edit_fn() {
  vim .bashrc;
  source .bashrc;
}
_vimrc_edit_fn() {
  vim .vimrc;
}
bashrc() {
  edit_config_and_push_to_github _bashrc_edit_fn
}
vimrc() {
  edit_config_and_push_to_github _vimrc_edit_fn
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

