# Make zsh the default shell
echo "Making zsh the default shell" | tee -a $logFile

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh | tee -a $logFile
echo which zsh | tee -a $logFile
dscl . -read /Users/$USER UserShell | tee -a $logFile
echo $SHELL | tee -a $logFile
chsh -s $(which zsh) | tee -a $logFile

echo "Installing oh-my-zsh" | tee -a $logFile
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" | tee -a $logFile

echo "Installing some plugins for zsh" | tee -a $logFile
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions | tee -a $logFile

echo "Creating .zshrc file" | tee -a $logFile
touch ~/.zshrc | tee -a $logFile
echo "export ZPLUG_HOME=/usr/local/opt/zplug
export ZPLUG_HOME=/usr/local/opt/zplug
export GEM_HOME=$HOME/.gem
export NVM_LAZY_LOAD=true
export PATH=$HOME/.rbenv/shims:$GEM_HOME/bin:$HOME/.cargo/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export NVM_DIR=\"$HOME/.nvm\"
[ -s \"/usr/local/opt/nvm/nvm.sh\" ] && . \"/usr/local/opt/nvm/nvm.sh\"  # This loads nvm
[ -s \"/usr/local/opt/nvm/etc/bash_completion\" ] && . \"/usr/local/opt/nvm/etc/bash_completion\"  # This loads nvm bash_completion
ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  z
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
source $ZPLUG_HOME/init.zsh
alias rimraf='rm -rf'
alias flushdns='sudo killall -HUP mDNSResponder'" > ~/.zshrc | tee -a $logFile

echo "Testing zsh prompt" | tee -a $logFile
zsh | tee -a $logFile
