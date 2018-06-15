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
[[ -s "/Users/seabornlee/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/seabornlee/.sdkman/bin/sdkman-init.sh"
eval "$(rbenv init -)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/seabornlee/Documents/github/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/seabornlee/Documents/github/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/seabornlee/Documents/github/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/seabornlee/Documents/github/node_modules/tabtab/.completions/sls.zsh