if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PATH="/usr/local/sbin:$PATH"

##GRC=`which grc`
##if [ "$TERM" != dumb ] && [ -n "$GRC" ]
##then
##    alias colourify="$GRC -es --colour=auto"
##    alias configure='colourify ./configure'
##    alias diff='colourify diff'
##    alias make='colourify make'
##    alias gcc='colourify gcc'
##    alias g++='colourify g++'
##    alias as='colourify as'
##    alias gas='colourify gas'
##    alias ld='colourify ld'
##    alias netstat='colourify netstat'
##    alias ping='colourify ping'
##    alias traceroute='colourify /usr/sbin/traceroute'
##fi

shopt -s nocaseglob

[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

complete -W "NSGlobalDomain" defaults
