export ZSH=/Users/Tony/.oh-my-zsh
export Z_HOME=/usr/local/Cellar/z/1.9/etc/profile.d/z.sh
export MANPATH=/usr/local/man:$MANPATH
export TOMCAT=/usr/local/tomcat
export WEBAPPS=$TOMCAT/webapps
export SOAPUI_HOME=/Applications/SoapUI-5.3.0.app/Contents/java/app/bin
export PKG_CONFIG_PATH=/usr/local/Cellar/zeromq/4.2.2/lib/pkgconfig
export PATH="/usr/bin:/usr/local/Cellar/sstp-client/1.0.12/sbin:$HOME/.fastlane/bin:node_modules/electron/dist/Electron.app/Contents/MacOS:/Applications/chromedriver:$HOME/.rbenv/shims:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export ASPNETCORE_ENVIRONMENT=integration
export fpath=(~/.zsh/completion $fpath)
export visual=vim
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export DOTFILES=/Users/Tony/Repositories/dotfiles

HISTFILE=˜/.bash_history
HISTSIZE=1000
SAVEHIST=1000
ZSH_THEME="af-magic"
HIST_STAMPS="mm/dd/yyyy"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_TMUX_AUTOSTART='true'


source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/powerlevel9k/powerlevel9k.zsh-theme

plugins=(
  sudo
  git
  docker
  docker-compose
  kubectl
  man
  mvn
  postgres
  colorize
  bundler
  node
  history
  rsync
  spring
  systemd
  tmux
  colored-man-pages
  zsh-autosuggestions
  zsh-completions
)

setopt ignore_eof
setopt nobeep
setopt extended_glob
setopt append_history
setopt extended_history
setopt hist_find_no_dups
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
# setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
unsetopt correct_all

alias code="code-insiders"
alias dirs="dirs -v"
alias ohmyzsh="code ~/.oh-my-zsh"
alias copylast='echo $(fc -l -1) | pbcopy'
alias swift="cd ~/Repositories/pa42/swift && clear"
alias ecourt="cd ~/Repositories/@ecourt/ecourt-fork && clear"
alias repositories="cd ~/Repositories && clear"
alias usmc-make="cd ~/Repositories/usmc/usmc-make && clear"
alias zshrc="code ~/.zshrc"
alias tomcat="cd /usr/local/tomcat && clear"
alias viewlog="clear && tail -f /Users/Tony/ecourt/logs/sustain.log"
alias invoices="node ~/Desktop/querysql.js"
alias sync="git push tony --all && git push bitbucket --all"
alias debug="clear && npm run debug"
alias python="python2"
alias pip="pip3"
alias compose="docker-compose"
alias pth="print -l $path"
alias vim=nvim
alias vi=nvim

function lx() {
  ls -l | awk '{print $9}'
}

function split() {
  echo $1 | tr ':' '\n'
}

function cpalette() {
  for i in {0..255} ; do
      printf "\x1b[38;5;${i}m${i} "
  done
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

autoload -Uz compinit && compinit -i
autoload -U promptinit; promptinit
prompt pure

export PATH="$HOME/.fastlane/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# usmc-make
