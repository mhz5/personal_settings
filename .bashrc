export PERSONAL_SETTINGS_DIR="$HOME/personal_settings"
# Source the default .bashrc provided by pop os.
source $PERSONAL_SETTINGS_DIR/.bashrc_default
# Read key bindings.
bind -f $PERSONAL_SETTINGS_DIR/.inputrc

# To generate large ASCII headers: http://patorjk.com/software/taag/#p=display&h=0&v=0&c=bash&f=Small%20Slant

#     ___    ___  ______   __ __     
#    / _ \  / _ |/_  __/  / // /  ___
#   / ___/ / __ | / /    / _  /  (_-<
#  /_/    /_/ |_|/_/    /_//_/  /___/

export APPLICATIONS_PATH="$HOME/applications"
export PATH="$PATH:$APPLICATIONS_PATH/react-native-debugger"
export PYTHONPATH="${PYTHONPATH}:~/Projects/awning"

# Go paths
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export GOBIN="$GOPATH/bin"

# Food Delivery App paths
export FDA_ROOT="$GOPATH/src/fda"
export FDA_WEB_ROOT="$HOME/Projects/fda-web"
export FDA_DRIVER_ROOT="$HOME/Projects/fda-driver"
# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#React Native Debugger
export RN_DEBUGGER_PATH="/usr/local/react-native-debugger"

export PATH="$RN_DEBUGGER_PATH:/usr/local/bin:$GOBIN:$GOROOT:$GOROOT/bin:$APPLICATIONS_PATH/WebStorm/bin:$PATH"


#     _  __               _                __    _            
#    / |/ / ___ _ _  __  (_)  ___ _ ___ _ / /_  (_) ___   ___ 
#   /    / / _ `/| |/ / / /  / _ `// _ `// __/ / / / _ \ / _ \
#  /_/|_/  \_,_/ |___/ /_/   \_, / \_,_/ \__/ /_/  \___//_//_/
#                           /___/                             

alias snth="cd $FDA_ROOT; git status"
alias aoei="cd $FDA_WEB_ROOT; git status"
alias oei="cd $FDA_DRIVER_ROOT; git status"

# Map Interrupt to Ctrl-L.
stty intr ^L
# Set the Command Prompt Prefix.
export PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\h\[`tput sgr0`\]:$PWD\n亹 '
# Sets the title of the Terminal Window
PROMPT_COMMAND='echo -ne "\033]0;Terminal: ${PWD/$HOME/~}\007"'


#    __  __  __    _    __   _   __        
#   / / / / / /_  (_)  / /  (_) / /_  __ __
#  / /_/ / / __/ / /  / /  / / / __/ / // /
#  \____/  \__/ /_/  /_/  /_/  \__/  \_, / 
#                                   /___/  
                                                  
# Std input to this command is copied to clipboard.
alias open="xdg-open"
alias copy="xclip -selection clipboard"
alias hibernate="sudo systemctl hibernate"
alias ii="sudo aptitude install"


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
  else
    git push --quiet;
    if [[ $? -ne 0 ]]; then
      echo "Failed"
    else
      echo "Success"
    fi
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
  git add .
  git commit -m "$1"
}


#     ____            
#    / __/  ___  _  __
#   / _/   / _ \| |/ /
#  /___/  /_//_/|___/ 

export GOOGLE_APPLICATION_CREDENTIALS="/home/muke/Downloads/graphite-prism-302815-2b15803338fb.json"

