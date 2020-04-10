export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"

plugins=(autojump zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source ~/.alias.sh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

source <(kubectl completion zsh)
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/seabornlee/.sdkman"
[[ -s "/Users/seabornlee/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/seabornlee/.sdkman/bin/sdkman-init.sh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/seabornlee/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/seabornlee/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/seabornlee/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/seabornlee/Desktop/google-cloud-sdk/completion.zsh.inc'; fi

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
