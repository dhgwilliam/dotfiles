# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

setopt nocasematch

[[ "$(hostname)" =~ 'logomach' ]] && DEFAULT_USER='davidgwilliam'

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
alias tmux='tmux attach || tmux -2 new'
alias gpf='git pull --ff-only'
alias gcv='git commit -v'
alias gcav='git commit -av'
alias vi=nvim
alias vim=nvim
alias vdf='vagrant destroy -f'
alias pdf=evince
alias be='bundle exec'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias src='cd ~/src'
alias tf=terraform
alias lp=lpass
alias v=vaulted
alias src='cd ~/src'
alias k=kubectl
alias gmf='git merge --ff-only'

# rbenv config
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# zsh autocomplete (must be last?)
autoload -U compinit; compinit

if [ -e /usr/local/bin/direnv ] ; then
  eval "$(direnv hook zsh)"
fi

export EDITOR='vim'
export PATH="/usr/local/sbin:$PATH"
