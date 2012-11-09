# make compilers happy
export ARCHFLAGS='-arch x86_64'

# favor user .bin and homebrew
export PATH=~/.bin:/usr/local/bin:$PATH

# load history
export HISTFILE=~/.history

export SHELL='/bin/zsh'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
