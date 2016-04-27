source "$HOME/.alias.sh"

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
#theme 'robbyrussell'
#Plugin 'theme'
#Plugin 'localhost'

source "$HOME/.homesick/repos/homeshick/homeshick.fish"

[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

set -x DOCKER_CERT_PATH /Users/seabornlee/.docker/machine/machines/default
set -x DOCKER_TLS_VERIFY 1
set -x DOCKER_HOST tcp://192.168.99.100:2376
rvm default

export PYTHONPATH="$PYTHONPATH:/usr/local/pynaoqi-python2.7-2.1.4.13-mac64/"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/pynaoqi-python2.7-2.1.4.13-mac64/"

set RUFF_HOME /opt/ruff-sdk-mac-0.7.0
set PATH $PATH "$RUFF_HOME/bin"

set EDITOR="vim"
