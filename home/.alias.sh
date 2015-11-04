alias vim='/opt/homebrew-cask/Caskroom/macvim/7.4-77/MacVim-snapshot-77/MacVim.app/Contents/MacOS/vim'
alias e='vim'
alias ealias='vim ~/.alias.sh'
alias tmux="TERM=screen-256color-bce tmux"

alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbr='git branch --remote'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcb='git checkout -b'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gl='git pull --rebase'
alias gp='git push'
alias gd='git diff'
alias gdca='git diff --cached'
alias gst='git status'
alias gm='git merge'

alias bi='bundle install'

alias rort='RAILS_ENV=test bundle exec'

alias nig='npm install -g'
alias bis='bower install -S'

alias yoad='yo angular:directive '

# Rails development
alias bi='bundle install'
alias be='bundle exec'
alias rs='be rails s'
alias rc='be rails c'
alias src='be mina "rails[console]" -f config/deploy-staging.rb'

alias ut='be rspec spec'

# Homebrew
alias bs='brew search'
alias bi='brew install'
alias cs='brew cask search'
alias ci='brew cask install'

# Vagrant
alias vg='vagrant'
alias vgp='vg provision'
