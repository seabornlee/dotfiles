source ~/.bash_profile

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source ~/.zprezto/init.zsh

source ~/.alias.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
