# ZSHRC file snippets

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/polbasmantilla/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# TERMINAL
alias cl="clear"
alias ls="ls -la"
alias ..="cd .."

# FOLDER
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="ls"
alias lsa="ls -a"
alias ll='ls -lh'
alias la='ls -lAh'

alias rm="rm -Rf"
alias mk="mkdir"

# NPM
alias ns="npm start"
alias nsp="npm start -- --port"
alias ni="npm install"
alias nlink="npm run link"
alias nunlink="npm unlink --no-save"

# GIT
alias g="git"

alias gl="git pull"
alias gcl="git clone"
alias gm="git merge"
alias gst="git stash"
alias gpop="git pop"

alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"
alias gpo="git push origin"

alias gcd="git checkout develop"
alias gcb="git checkout"
alias gcf="git checkout --"
alias gcnb="git checkout -b"
alias gb="git branch"
alias gd="git diff"
alias gc-="git checkout -"

alias undo_last_commit="git reset --soft HEAD~1"
alias delete_last_commit="git reset --hard HEAD~1"

# DIG BOOSTER
alias booster="cd Desktop/DIG/booster/"

alias bcp="cd Desktop/DIG/booster/booster-web-cp/"
alias bcpns="cd Desktop/DIG/booster/booster-web-cp/ && npm start"
alias bcpnsp="cd Desktop/DIG/booster/booster-web-cp/ && npm start  -- --port=8080"
alias nscp="npm start -- --port=8080"

alias bui="cd Desktop/DIG/booster/booster-web-ui/"
alias buins="cd Desktop/DIG/booster/booster-web-ui/ && npm start"
alias buinsp="cd Desktop/DIG/booster/booster-web-ui/ && npm start  -- --port=8081"
alias nsui="npm start -- --port=8081"

alias bqab="cd Desktop/DIG/booster/booster-web-quote-and-buy/"
alias bqabns="cd Desktop/DIG/booster/booster-questionnaire-builder/ && npm start"
alias bqabnsp="cd Desktop/DIG/booster/booster-questionnaire-builder/ && npm start  -- --port=8083"
alias nsqab="npm start -- --port=8082"

alias bqb="cd Desktop/DIG/booster/booster-questionnaire-builder/"
alias bqbns="cd Desktop/DIG/booster/booster-questionnaire-builder/ && npm start"
alias bqbnsp="cd Desktop/DIG/booster/booster-questionnaire-builder/ && npm start  -- --port=8082"
alias nsqb="npm start -- --port=8083"

alias raven="cd Desktop/DIG/booster/raven/"

alias but="cd Desktop/DIG/booster/booster-web-utils/"
alias butns="cd Desktop/DIG/booster/booster-web-utils/ && npm start"
alias butnsp="cd Desktop/DIG/booster/booster-web-utils/ && npm start -- --port="

alias bas="cd Desktop/DIG/booster/booster-web-assets/"

# DIG PRUDENTIAL
alias prudential="cd Desktop/DIG/prudential/"

alias bcp="cd Desktop/DIG/prudential/booster-web-cp/"
alias bcpns="cd Desktop/DIG/prudential/booster-web-cp/ && npm start"
alias bcpnsp="cd Desktop/DIG/prudential/booster-web-cp/ && npm start  -- --port=8080"
alias nscp="npm start -- --port=8080"

alias bqab="cd Desktop/DIG/prudential/booster-web-quote-and-buy/"
alias bqabns="cd Desktop/DIG/prudential/booster-questionnaire-builder/ && npm start"
alias bqabnsp="cd Desktop/DIG/prudential/booster-questionnaire-builder/ && npm start  -- --port=8083"
alias nsqab="npm start -- --port=8082"

alias praven="cd Desktop/DIG/prudential/raven/"

# SYSTEM
alias restartaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"


# FUNCTIONS
mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# Booster Web Start -> starts project on the port that is on the .env
### Example .env -> PORT=8000 -> this will run the proj on the 8000 port
function bws {
  port=$(cat .env | grep PORT= | cut -d '=' -f2)
  npm start -- --port=$port
}

# CUSTOMIZATION
### Title on tabs
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


### npm run start project with port from .env: npmsp (`npm` `s`tart `p`ort)
```shell
function npmsp {
  port=$(cat .env | grep PORT= | cut -d '=' -f2)
  npm start -- --port=$port
}
```
