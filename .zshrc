# System
alias ls='exa -lh --no-permissions'

alias ports='lsof -i -P -n | grep LISTEN'

# Sounds
alias saysuccess='afplay /System/Library/Sounds/Funk.aiff'
alias sayfail='afplay /System/Library/Sounds/Sosumi.aiff'
alias saydone='saysuccess || sayfail'

## Tools

# rg
function rga() rg ${1} -A ${2:-5} -B ${2:-5}

# Git
alias pull='git stash && git pull && git stash pop'
function checkout() git stash && git fetch --all && git checkout ${1} && git stash pop
