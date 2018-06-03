export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Sync dotfiles repo
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias n=nvim
alias la="ls -A"
alias mkdir="mkdir -pv"

# start long running programs
function run {
    "$@" < /dev/null &> /dev/null &
}

function make_and_cd() {
  [ -d $1 ] || mkdir -pv $1
  cd $1
}

# connect to previous session if available, or create new
alias tmux_='tmux -2u a || tmux -2u'

# where am I?
alias :wq="exit"
alias :e="nvim"

alias mcd=make_and_cd

alias config:vim="nvim $HOME/.vimrc"
alias config:zsh="nvim $HOME/.zshrc"
alias config:tmux="nvim $HOME/.tmux.conf"
alias config:kitty="nvim $HOME/.config/kitty/kitty.conf"

alias ping3='ping -c3'
alias ping5='ping -c5'
