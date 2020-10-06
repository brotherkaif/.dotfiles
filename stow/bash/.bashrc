#   _               _
#  | |__   __ _ ___| |__  _ __ ___
#  | '_ \ / _` / __| '_ \| '__/ __|
# _| |_) | (_| \__ \ | | | | | (__
#(_)_.__/ \__,_|___/_| |_|_|  \___|
#==================================

# GOOGLE CLOUD SHELL
## if not running interactively, return
case $- in
		*i*) ;;
			*) return;;
esac

## source config
if [ -f "/google/devshell/bashrc.google" ]; then
	source "/google/devshell/bashrc.google"
fi

# TMUX AUTO LOAD
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	tmux -2 attach -t default || tmux -2 new -s default
fi

# MOTD
echo -e "\e[43;30m T E R M I N A L \e[0m"

# GIT PROMPT
if [ -f "$HOME/.apps/git-prompt/bash/gitprompt.sh" ]; then
	GIT_PROMPT_ONLY_IN_REPO=0
	GIT_PROMPT_FETCH_REMOTE_STATUS=0
	GIT_PROMPT_THEME=Solarized_NoExitState
	source $HOME/.apps/git-prompt/bash/gitprompt.sh
fi

# HISTORY TOGGLE
export HISTCONTROL=ignorespace

# XDG BASE DIRECTORY CONFIG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

# ENV VARIABLES
export MYVIMRC="$HOME/.vimrc"

# NVM SETUP
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# convenience aliases
alias ll='ls -la'

# git aliases
alias gst='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'

# app aliases
alias tmux='tmux -2'

# linux config
# alias vim='~/.apps/vim/vim.appimage'
