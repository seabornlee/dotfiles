export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dracula"
plugins=(autojump)
source $ZSH/oh-my-zsh.sh

source ~/.bash_profile

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source ~/.alias.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/seabornlee/.sdkman"
source "/Users/seabornlee/.sdkman/bin/sdkman-init.sh"
eval $(thefuck --alias)

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
