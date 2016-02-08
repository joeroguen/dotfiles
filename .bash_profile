export JAVA_HOME=$(/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home)
export PATH=$JAVA_HOME/bin:$PATH

export CLICOLOR=1
export LSCOLORS=EhFxBxDxCxegedabagacad

c() { cd "$@" && clear && ls -1ap; }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export PS1="[\w ] ---> "
export PS1="
============================================================================
\w
============================================================================
: "

alias ls='clear && ls -1a'
alias game='clear && c ~/Documents/projectz/games/game-faith-card-game/app/'
alias cd='clear && cd'
alias v='vi'
alias updatevimrc='cp ~/.vimrc ~/Documents/projectz/dotfiles'
alias updatebashprofile='cp ~/.bash_profile ~/Documents/projectz/dotfiles'
