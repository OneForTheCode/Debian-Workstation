alias ..='cd ..'
alias ls='ls --color=auto'
alias lsl='ls --color=auto | less'
alias ll='ls -hals'
alias lt='ls -hals --human-readable --size -1 -S --classify'
alias lll='ls -hals | less'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ps='ps aux'
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias df='df -Tha --total'
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias gh='history | grep'
alias history-grep='history | grep'
alias count='find . -type f | wc -l'
alias apt='sudo apt'
alias apt-sysupdate='apt update && apt upgrade -y'
alias systemctl='sudo systemctl'
alias less='less -R'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias diff='colordiff'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias cpv='rsync -ah --info=progress2'
alias free='free -mt'
alias wget='wget -c'

# Check Public IP
alias publicip='curl http://ipecho.net/plain; echo'

# Python
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

# Git
alias gstart='cd `git rev-parse --show-toplevel` && git checkout main && git pull'
alias git-start='gstart'
alias glog='git log --oneline --graph --color --all --decorate'
alias git-log='glog'
alias gadd='git add **'
alias git-add='gadd'
alias gcommit='git commit -m'
alias git-commit='gcommit'
alias gpush='git push'
alias git-push='gpush'
alias gpull='git pull'
alias git-pull='gpull'
alias gclone='git clone'
alias git-clone='gclone'
