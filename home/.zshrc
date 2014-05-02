# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="flazz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# PATH & envpuppet
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/share/npm/bin:/Users/david/bin
export ENVPUPPET_BASEDIR=/Users/david/src
export KEYTIMEOUT=1
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages

source $ZSH/oh-my-zsh.sh

# vi-mode
set -o vi
bindkey '^?' backward-delete-char

# ALIASES
alias t='todo.sh -ad /Users/david/.todo/config'
alias faro='open afp://guest@faro/Public'
alias v=/usr/bin/vagrant
alias tmux='tmux -2'
alias marked='open -a marked'
alias jist='jist -t d0972fcbe076264f85452f634a8093bc74026268 -c'
alias gff='git pull --ff-only'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# rbenv config
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EDITOR=/usr/bin/vim

# zsh autocomplete (must be last?)
autoload -U compinit; compinit
