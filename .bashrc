# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
#export HISTCONTROL=ignoredups
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

alias ls='ls --color=auto'
alias cd..='cd ..'
alias cp='cp -p '
alias lsd='ls -d */'
alias df='df -h'
alias rm='rm -i'
alias lhrt='ls -lhrt'
alias lhsr='ls -lhSr'
alias lsl='ls -lh'
alias ll='ls -lh'
alias acs='emacs -nw'
#alias momo='mocp '
#alias momo='mocp -T transparent-background '
#alias momo='mocp -T yellow_red_theme '
#alias momo='mocp -T nightly_theme'
alias momo='mocp -T ~/.moc/themes/my_theme'
alias llaveon='mount /media/clef/'
alias llaveof='umount /media/clef/'
#alias clave='cd /media/clef/'
alias monte='mount /cdrom'
alias demonte='umount /cdrom'
alias cdc='cd /cdrom'

#le 22
alias egimp='LANGUAGE=en gimp '
#le 18 XII 2011
#alias nouvelEpub='mkdir OEBPS; mkdir OEBPS/css; mkdir OEBPS/images; mkdir OEBPS/textes; mkdir OEBPS/fontes; cp -r ~/zpao/META-INF/ . ; cp ~/zpao/mimetype .'
alias detilde='rm *~'

#le 4 XII 2011
alias 3e='e3em '
alias verifepub='java -jar ~/zpao/epubcheck/epubcheck-3.0.jar '

#export TERM=xterm-256color

JAVA_HOME=/usr/lib/jvm/java-6-sun
PATH=${JAVA_HOME}:${JAVA_HOME}/jre:${JAVA_HOME}/lib:${JAVA_HOME}/bin:${PATH}

#gnumeric
#LC_NUMERIC=en_US
#export LC_NUMERIC

#jago
alias jago='cd deux/goban/mine/jago/; java -jar /usr/local/games/jago.jar &'
alias zgo='cd deux/goban/mine/; java -jar /usr/local/games/ZGo.jar &'
#go en mode ascii
alias asgo='cd deux/goban/mine/; gnugo --color black -o sortie.sgf'



MAIL=/var/spool/mail/bernie && export MAIL
#xterms
#alias xrvt='rxvt -font 9x15 -sl 1024 -pr white -sb +sr -fg green -bg black -cr blue &'

#alias voirwina='cd /media/wina/Documents\ and\ Settings/bernie/'
#echo export HTTP_PROXY="127.0.0.1:8080"

#http_proxy=http://127.0.0.1:8118/
#HTTP_PROXY=$http_proxy
#export http_proxy HTTP_PROXY

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

