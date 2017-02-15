# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

setopt nocasematch

[[ "$(hostname)" =~ 'M-77G8WP' ]] && \
  DEFAULT_USER='david.gwilliam@standard.com' || DEFAULT_USER='david'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode autojump ssh-agent zsh-syntax-highlighting)

# autojump config
source "$ZSH/oh-my-zsh.sh"

export KEYTIMEOUT=1
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export PATH=$PATH:~/bin:~/src/go/bin:/usr/local/go/bin
export GOPATH=$HOME/src/go

# vi-mode
set -o vi
bindkey '^?' backward-delete-char

# ALIASES
alias gist=jist
alias v=/usr/bin/vagrant
alias tmux='tmux attach || tmux -2 new'
alias gpf='git pull --ff-only'
alias gcv='git commit -v'
alias gcav='git commit -av'
alias vim='mvim -v' # mac-only
alias vi=vim
alias vdf='vagrant destroy -f'
alias pdf=evince
alias be='bundle exec'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias src='cd ~/src'
alias t=terraform
alias minecraft='java -jar ~/Games/Minecraft.jar'
alias 750='mv ~/Downloads/document.txt ~/Documents/750words/$(date +%Y-%m-%d).md'
alias i3='vi ~/.i3/config'
alias dstat='dstat -cdnpmgs --top-bio --top-cpu --top-mem'
alias track='keybase track'
alias marked='open -a marked'
alias refresh='source ~/.zshrc'

# rbenv config
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# zsh autocomplete (must be last?)
autoload -U compinit; compinit

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:/home/david/src/node/bin

if [ -e /usr/local/bin/direnv ] ; then
  eval "$(direnv hook zsh)"
fi

which nvm 2>&1 > /dev/null
[[ $? -eq 0 ]] && nvm use node
which azure 2>&1 > /dev/null
[[ $? -eq 0 ]] && . <(azure --completion)

# standard-only
ping -c 3 proxy.standard.com >/dev/null 2>&1 
if [ $? -eq 0 ] ; then
  export http_proxy=http://proxy.standard.com:8080
  export https_proxy=http://proxy.standard.com:8080
  export no_proxy='127.0.0.1,.standard.com'
  unset offsite
else
  unset http{,s}_proxy
  export offsite=true
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export EDITOR='mvim -v'
export PATH="/usr/local/sbin:$PATH"
