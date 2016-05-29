export JAVA_HOME=$(/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home)
export PATH=$JAVA_HOME/bin:$PATH

export CLICOLOR=1
#export LSCOLORS=EhFxBxDxCxegedabagacad
export LSCOLORS=agfxcxdxhxehhdhbagachd

c() { cd "$@" && clear && ls -1ap; }

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export PS1="[\w ] ---> "
export PS1="
============================================================================
\w
============================================================================
: "

alias copyf='cp'
alias copyd='cp -rf'
alias ren='mv'
alias movef='mv'
alias moved='mv -f'
alias delf='rm'
alias deld='rm -rf'
alias ls='clear && ls -1a'
alias cd='clear && cd'
alias v='vi'
alias m='mvim'
alias drives='cd /Volumes && ls'
alias webdev='clear && c /Applications/MAMP/htdocs'
alias backupdotfiles='cp ~/.vimrc ~/Documents/projectz/dotfiles && cp ~/.bash_profile ~/Documents/projectz/dotfiles && cd ~/Documents/projectz/dotfiles && git status'
alias backupsnippets='cp -rf ~/.vim/bundle/vim-snipmate/snippets ~/Documents/projectz/snippets && cd ~/Documents/projectz/snippets && git status'
alias chrome='open -a "Google Chrome"'
alias filesize='du -sh *'
alias b='cd ../ && ls'
alias game='clear && c ~/Documents/projectz/games/game-faith-card-game/app/'
alias wifion='networksetup -setairportpower en0 on'
alias wifioff='networksetup -setairportpower en0 off'
alias cheat='clear && cat ~/Documents/projectz/tools/cheat-sheet-bash.txt'
alias blog='clear && cd ~/Documents/projectz/websites/blog/ && ls -1a'
alias dropbox='clear && cd ~/Dropbox/Graphics/trail-maps/2016/ && ls -la'
