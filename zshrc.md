# ZSHRC file snippets

### Shortcuts
```shell
alias /root="cd ~/"
alias /code="cd ~/Code"
alias /downloads="cd ~/Downloads"
alias /desktop="cd ~/Desktop"
```

### Terminal
```shell
alias ls="ls -la"
alias ip="ifconfig"
alias reload="source ~/.zshrc"
```

### Files and apps
```shell
alias zshrc="code ~/.zshrc"
alias hostfile="code /etc/hosts/"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias restartaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"
```

### NPM
```shell
alias npmi="npm install"
```

### git
```shell
alias g="git"
alias gist="git status"
alias gips="git push"
alias gipl="git pull"
alias giad="git add"
alias giall="git add ."
alias gico="git commit"
alias gicom="git commit -m"
alias gich="git checkout"
alias undo_last_commit="git reset --soft HEAD~1"
alias delete_last_commit="git reset --hard HEAD~1"
```

### Project folder shortcuts
```shell
alias dig="cd ~/Code/DIG"
alias klare="cd ~/Code/Klare"
alias noris="cd ~/Code/Noris"
alias personal="cd ~/Code/Personal"
alias pers="cd ~/Code/Personal"
alias prudential="cd ~/Code/Prudential"
alias prud="cd ~/Code/Prudential"
```

### Projects name shortcuts
```shell
alias bqb="cd booster-questionnaire-builder"
alias bcp="cd booster-web-cp"
alias bq="cd booster-web-questionnaire"
alias bqnb="cd booster-web-quote-and-buy"
alias bui="cd booster-web-ui"
alias bu="cd booster-web-utils"
alias raven="cd raven"
```

### npm run start project with port from .env
```shell
function bws {
  port=$(cat .env | grep PORT= | cut -d '=' -f2)
  npm start -- --port=$port
}
```
