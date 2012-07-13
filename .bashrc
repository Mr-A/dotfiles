# Drectory navigation aliases
# Aliases
# BASIC SETUP
PS1="[\t]\[\e[33;1m\]\W\[\e[0m\]>"
export HISTTIMEFORMAT='%F %T '
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias l='ls -CF'
alias back='cd $OLDPWD'
alias root='sudo su'
alias dfh='df -h'
alias h="history|grep "
alias f="find . |grep "
alias p="ps aux |grep "
alias o="gnome-open "
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'
alias reba='source ~/.bashrc'
# alias start='dbus-launch startx'
# alias runlevel='sudo /sbin/init'

# Backup settings
alias hgsettings='hg clone ssh://hg@bitbucket.org/mousecat/settings'

# VIM Related
alias G='gvim -geom 120x50'
alias g='gvim'
alias v='vim'
alias tvim='gvim --servername localhost --remote-silent-tab'
alias cim='vim'
alias svim='sudo vim'

# CODING Related
alias a.out='./a.out'
alias gcc='gcc -std=c99 -O -Wall'

# SSH and SSHFS
#alias sshnews='~/.sshnews'
#alias ssh28='ssh -X -Y d3han@linux028.student.cs.uwaterloo.ca'
alias sshjlu='ssh -X -Y fromjluo@fromjlu.org'
#alias sshcssa='ssh -X -Y uwcssaco@uwcssa.com'
#alias sshrees='ssh -X -Y d3han@rees.uwaterloo.ca'
#alias grcs='sshfs -o ServerAliveInterval=15 -o reconnect d3han@linux028.student.cs.uwaterloo.ca:/u2/d3han ~/cs-dir ; cd ~/cs-dir ; ls'
#alias gorees='sshfs -o ServerAliveInterval=15 -o reconnect d3han@rees.uwaterloo.ca:/u2/d3han ~/cs-dir ; cd ~/cs-dir ; ls'
alias ocef='sshfs -o ServerAliveInterval=15 -o reconnect -p 31785 oceforg@ocef.org:/home/oceforg/www ~/ocef ; cd ~/ocef ; ls'
#alias cssa='sshfs -o ServerAliveInterval=15 -o reconnect uwcssaco@uwcssa.com:/home5/uwcssaco/www ~/cssa ; cd ~/cssa ; ls'
alias fromjlu='sshfs -o ServerAliveInterval=15 -o reconnect fromjluo@fromjlu.org:/home1/fromjluo ~/fromjlu ; cd ~/fromjlu ; ls'
alias antony='sshfs -o ServerAliveInterval=15 -o reconnect fromjluo@fromjlu.org:/home1/fromjluo/antony ~/antony; cd ~/antony; ls'

# OTHER APPs Related
alias atop='sudo chmod a+rx /tmp/atop.d/ && sudo chmod a+r /tmp/atop.d/atop.acct && atop'
alias t='todo.sh'
alias xbns='x3270 -model 3279-4 TN3270.sysplex.bns'

# COURSE related
alias sdb2='su db2inst1 -l'
#alias cd348='cd ~/Dropbox/courses/Winter11/cs348; ls'
alias gocs='cd ~/cs-dir/ ; ls'
# alias gres='~/backup/Projects/Scripts/gres'
# alias regress='~/courses/Fall09/cs246/assignments/1/q1regress'

# alias buildcdb='find /home/antony/cs-dir/cs350-svn/wire -name "*.c" -o -name "*.S" -o -name "*.h" > /home/antony/cs-dir/cs350-svn/wire/cscope.files ; cscope -bq'

#export SVNROOT='/home/antony/.svn/repositories/cs348'
#export SVNURL='file:///home/antony/.svn/repositories/cs348'
# export CSCOPE_DB='/home/antony/cs-dir/cs350-svn/wire/cscope.out'

# export CVS_RSH='ssh'
# export CVSROOT='d3han@linux028.student.cs.uwaterloo.ca:/u2/d3han/cs246/cvsroot'
# export CVSROOT='/home/antony/Courses/Fall09/cs246/assignments/cvsroot'

# Use VIm as man pager
vman () {
    export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
                  vim -R -c 'set ft=man nomod nolist nonu' -c 'map q :q<CR>' \
                  -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
                  -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
           # invoke man page
           man $1
           # we muse unset the PAGER, so regular man pager is used afterwards
           unset PAGER
}

# mkdir, and cd into it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

# The following three lines have been added by UDB DB2.
if [ -f /home/antony/das/dasprofile ]; then
    . /home/antony/das/dasprofile
fi

# Add /go/bin to the PATH environment variable
export PATH=$PATH:/usr/local/go/bin

# GNUstep
. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh
