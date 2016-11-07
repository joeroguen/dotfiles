export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# export JAVA_HOME=$(/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home)
# export PATH=$JAVA_HOME/bin:$PATH

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

alias cpf='cp'
alias cpd='cp -rf'
alias ren='mv'
alias movef='mv'
alias moved='mv -f'
alias delf='rm'
alias deld='rm -rf'
alias ls='clear && ls -1a -F'
alias tree='clear && pwd && tree'
alias f='clear && open -a finder .'
alias finder='clear && open -a  finder .'
alias cd='clear && cd'
alias grep='clear && grep -i -n'
alias v='vi'
alias m='mvim'
alias drives='cd /Volumes && ls'
alias tests='clear && c ~/Desktop/tests/'
alias docs='clear && c ~/Documents'
alias dev='clear && c /Applications/MAMP/htdocs'
alias webdev='clear && c /Applications/MAMP/htdocs'
alias wp='clear && c /Applications/MAMP/htdocs/wordpress/wp-content/themes'
alias snips='clear && c ~/.vim/bundle/vim-snipmate/snippets/'
alias backupdotfiles='cp ~/.vimrc ~/Documents/projectz/dotfiles && cp ~/.bash_profile ~/Documents/projectz/dotfiles && cd ~/Documents/projectz/dotfiles && git status'
alias backupsnippets='cp -rf ~/.vim/bundle/vim-snipmate/snippets ~/Documents/projectz/snippets && cd ~/Documents/projectz/snippets && git status'
alias chrome='open -a "Google Chrome"'
alias edit='open -a "TextEdit"'
alias filesize='du -sh *'
alias b='cd ../ && ls'
alias game='clear && c ~/Documents/projectz/games/game-faith-card-game/development/'
alias gamebegin='chrome index.html && cd scripts/ && m main.js && cd ../ && grunt watch'
alias corona='clear && c ~/Documents/projectz/games/game-faith-corona/'
alias beans='clear && open "/Applications/NetBeans/NetBeans 8.1.app"'
alias desk='clear && c ~/Desktop'
alias down='clear && c ~/Downloads/'
alias won='networksetup -setairportpower en0 on'
alias woff='networksetup -setairportpower en0 off'
alias cheat='clear && cat ~/Documents/projectz/tools/cheat-sheet-bash.txt'
alias blog='clear && cd ~/Documents/projectz/websites/blog/ && ls -1a'
alias dropbox='clear && cd ~/Dropbox/Graphics/trail-maps/2016/ && ls -la'

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Applications/cocos2d-x-3.12/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Applications
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Applications/cocos2d-x-3.12/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Applications/android-ndk-r12b
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Applications/android-sdk-macosx
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/Applications/apache-ant-1.9.7/bin
export PATH=$ANT_ROOT:$PATH
