if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias lla='ls -lA'
alias la='ls -A'
alias l='ls -CF'
alias "cd.."="cd ../"
alias up="cd ../"
alias docker-rm-exited="docker ps -q -f status=exited | xargs docker rm"
alias docker-cleanup-volumes="docker volume ls -qf dangling=true | xargs -r docker volume rm"
alias docker-rmi-orphans="docker images --filter "dangling=true" -q | xargs docker rmi"
alias inotify-watch-count="for foo in /proc/*/fd/*; do readlink -f $foo; done |grep inotify |cut -d/ -f3 |xargs -I '{}' -- ps --no-headers -o '%p %U %c' -p '{}' |uniq -c |sort -nr"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
