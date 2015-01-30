export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export DYLD_LIBRARY_PATH=/Applications/instantclient_11_2
export ORACLE_HOME=$DYLD_LIBRARY_PATH
export SQLPATH=$ORACLE_HOME
export PATH=$PATH:$ORACLE_HOME
export RUBYMOTION_ANDROID_SDK=~/android-rubymotion/sdk
export RUBYMOTION_ANDROID_NDK=/usr/local/Cellar/android-ndk/r10c

#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home

# MacPorts Installer addition on 2013-10-10_at_23:01:34: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=`npm bin -g`:$PATH
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
export PATH=$HOME/local/node/bin:/usr/local/bin:$PATH

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/twer/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
