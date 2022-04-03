export ZSH=/Users/Tony/.oh-my-zsh
export Z_HOME=/usr/local/Cellar/z/1.9/etc/profile.d/z.sh
export PATH="/usr/bin:/usr/local/bin:/usr/local/sbin:$HOME/.dotnet/tools:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export MANPATH=/usr/local/man:$MANPATH
export fpath=(~/.zsh/completion $fpath)
export visual=vim
export NODE_PATH=$(npm root -g)

HISTFILE=˜/.bash_history
HISTSIZE=1000
SAVEHIST=1000
ZSH_THEME="af-magic"
HIST_STAMPS="mm/dd/yyyy"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
  sudo
  git
  docker
  docker-compose
  kubectl
  man
  mvn
  node
  history
  colored-man-pages
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
alias copylast='echo $(fc -l -1) | pbcopy'
alias repositories="cd ~/Repositories && clear"
alias make="cd ~/Repositories/make && clear"
alias zshrc="subl ~/.zshrc"
alias pth="print -l $path"
alias path="split $PATH"
alias docker-clean-unused='docker system prune --all --force --volumes'
alias docker-clean-all='docker container stop  && docker system prune -a -f --volumes'
alias myip='ipconfig getifaddr en0'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias chromedebug="sudo /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --no-first-run --inspect --no-default-browser-check"

function dirs() {
	tree -d -L $2 -I 'node_modules'
}

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
  export EDITOR='subl'
fi

autoload -Uz compinit && compinit -i
# autoload -U promptinit; promptinit
# prompt pure

# export PATH="$HOME/.fastlane/bin:$PATH"

source $ZSH/oh-my-zsh.sh
source ~/zsh-syntax-highlighting.zsh
/Users/tony/Repositories/dotfiles/zsh/zsh-syntax-highlighting
# source ~/powerlevel9k/powerlevel9k.zsh-theme

clear

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

