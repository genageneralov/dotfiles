# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="fishy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh
source $ZSH/zsh-history-substring-search.zsh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

setopt correctall

function chpwd() {
  ls
  }

tailc() { tail -n 40 "$1" | column -t; }

# get external ip address
function extip {
        echo $(curl -s https://whatismyip.nulltime.net)
    }

# get internal ip address(es)
function intip {
        ifconfig | awk '/inet / {print $2}'
    }
  
 alias tmux='tmux attach || tmux new'
 alias ls='ls -FNh --tabsize=0 --color=auto --show-control-chars --group-directories-first'

# разукрашиваем команды с помощью grc
 if [ -f /usr/bin/grc ]; then
 alias ping='grc --colour=auto ping'
 alias traceroute='grc --colour=auto traceroute'
 alias make='grc --colour=auto make'
 alias diff='grc --colour=auto diff»'
 alias cvs='grc --colour=auto cvs'
 alias netstat='grc --colour=auto netstat'
 alias tree='grc --colour=auto tree'
# # разукрашиваем логи с помощью grc
 alias logc="grc cat"
 alias tail='grc --colour=auto tail -n 200 -f'
 alias logh="grc head"
 fi

 setopt INC_APPEND_HISTORY SHARE_HISTORY  #добавлять каждую команду в историю сразу после нажатия enter
 setopt HIST_IGNORE_ALL_DUPS  #не отображать дубликаты
 setopt HIST_REDUCE_BLANKS #не отображать пустые команды

 # bind UP and DOWN arrow keys
 zmodload zsh/terminfo
 bindkey "$terminfo[kcuu1]" history-substring-search-up
 bindkey "$terminfo[kcud1]" history-substring-search-down
