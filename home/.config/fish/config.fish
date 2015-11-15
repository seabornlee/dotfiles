source "$HOME/.alias.sh"

theme 'robbyrussell'
package 'theme'
package 'localhost'

source "$HOME/.homesick/repos/homeshick/homeshick.fish"

[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

set -x DOCKER_CERT_PATH /Users/mavis/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
set -x DOCKER_HOST tcp://192.168.59.103:2376
rvm default

export PYTHONPATH="$PYTHONPATH:/usr/local/pynaoqi-python2.7-2.1.4.13-mac64/"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/pynaoqi-python2.7-2.1.4.13-mac64/"
