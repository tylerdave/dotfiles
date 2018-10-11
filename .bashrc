# Environment variables
export EDITOR=vim
#PS1="[\u@\h:\w]\$ "
PS1='\n[$? \w$(__git_ps1 " <%s>")]\n\u@\h:\$ '
export GIT_PS1_SHOWDIRTYSTATE=True
export GIT_PS1_SHOWSTASHSTATE=True
export GIT_PS1_SHOWCOLORHINTS=True

#export PROMPT_COMMAND='__git_ps1 "[\u@\h:\w" "]\\\$ "'
export PROMPT_DIRTRIM=2

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export NOSE_REDNOSE=1

export CHECKOUTS_DIR=$HOME/checkouts
export PROJECT_HOME=$CHECKOUTS_DIR
export PYTHONDONTWRITEBYTECODE=1
LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=00;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=00;38;5;64:*.tar=00;38;5;61:*.tgz=00;38;5;61:*.arj=00;38;5;61:*.taz=00;38;5;61:*.lzh=00;38;5;61:*.lzma=00;38;5;61:*.tlz=00;38;5;61:*.txz=00;38;5;61:*.zip=00;38;5;61:*.z=00;38;5;61:*.Z=00;38;5;61:*.dz=00;38;5;61:*.gz=00;38;5;61:*.lz=00;38;5;61:*.xz=00;38;5;61:*.bz2=00;38;5;61:*.bz=00;38;5;61:*.tbz=00;38;5;61:*.tbz2=00;38;5;61:*.tz=00;38;5;61:*.deb=00;38;5;61:*.rpm=00;38;5;61:*.jar=00;38;5;61:*.rar=00;38;5;61:*.ace=00;38;5;61:*.zoo=00;38;5;61:*.cpio=00;38;5;61:*.7z=00;38;5;61:*.rz=00;38;5;61:*.apk=00;38;5;61:*.gem=00;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=00;38;5;245:*.rdf=00;38;5;245:*.owl=00;38;5;245:*.n3=00;38;5;245:*.ttl=00;38;5;245:*.nt=00;38;5;245:*.torrent=00;38;5;245:*.xml=00;38;5;245:*Makefile=00;38;5;245:*Rakefile=00;38;5;245:*build.xml=00;38;5;245:*rc=00;38;5;245:*1=00;38;5;245:*.nfo=00;38;5;245:*README=00;38;5;245:*README.txt=00;38;5;245:*readme.txt=00;38;5;245:*.md=00;38;5;245:*README.markdown=00;38;5;245:*.ini=00;38;5;245:*.yml=00;38;5;245:*.cfg=00;38;5;245:*.conf=00;38;5;245:*.c=00;38;5;245:*.cpp=00;38;5;245:*.cc=00;38;5;245:*.sqlite=00;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.lof=00;38;5;240:*.lol=00;38;5;240:*.lot=00;38;5;240:*.out=00;38;5;240:*.toc=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=00;38;5;166:*.mpg=00;38;5;166:*.mpeg=00;38;5;166:*.m2v=00;38;5;166:*.mkv=00;38;5;166:*.ogm=00;38;5;166:*.mp4=00;38;5;166:*.m4v=00;38;5;166:*.mp4v=00;38;5;166:*.vob=00;38;5;166:*.qt=00;38;5;166:*.nuv=00;38;5;166:*.wmv=00;38;5;166:*.asf=00;38;5;166:*.rm=00;38;5;166:*.rmvb=00;38;5;166:*.flc=00;38;5;166:*.avi=00;38;5;166:*.fli=00;38;5;166:*.flv=00;38;5;166:*.gl=00;38;5;166:*.m2ts=00;38;5;166:*.divx=00;38;5;166:*.webm=00;38;5;166:*.axv=00;38;5;166:*.anx=00;38;5;166:*.ogv=00;38;5;166:*.ogx=00;38;5;166:';
export LS_COLORS

#if [[ $TERM != "screen"* ]];then
#    if [ -e /usr/share/terminfo/x/xterm-256color ]; then
#        export TERM='xterm-256color'
#    else
#        export TERM='xterm-color'
#    fi
#fi

# Aliases
alias svnd='svn --diff-cmd diff -x "-y --suppress-common-lines" diff | less'
alias grin='grin --force-color'
alias less='less -R'
alias ll='ls -al'  # --color=auto'
# print a nice timestamp
alias ts='date +"%Y-%m-%d-%H:%M:%S"'

alias cleanpyc='find . -name "*.pyc" -delete && find . -type d -name "__pycache__" -exec rmdir "{}" \;'
alias ducks='du -cks * | sort -rn | head'
alias curltime='curl -w "@$HOME/.curl-format.txt" -o /dev/null -s'
alias timestamp='date -u +"%Y-%m-%dT%H:%M:%SZ"'


# Bash functions
# adds a timestamp
addts() {
    while IFS= read -r line; do
        printf "%s - %s\n" "$(date +"%Y-%m-%d %H:%M:%S")" "$line"
    done
}
# repeat a command indefinitely
repeat(){
    while true
    do
        $1
    done
}

k-redeploy() {
  kubectl patch deployment $1 -p "{\"spec\":{\"template\":{\"metadata\":{\"annotations\":{\"deploy-datetime\":\"`timestamp`\"}}}}}"
}

k() {
  kubectl config current-context
}


# Source additional settings files
SOURCE_FILES="
/etc/bashrc
/usr/bin/virtualenvwrapper.sh
$HOME/.bashrc-local
$HOME/.ghar/ghar-bash-completion.sh
$HOME/.git-prompt.sh
$HOME/.git-completion.bash
$HOME/.django_bash_completion
$HOME/.travis/travis.sh
#$HOME/.iterm2_shell_integration.bash
"
for SOURCE_FILE in $SOURCE_FILES
do
    if [ -f $SOURCE_FILE ]; then
        . $SOURCE_FILE
    fi
done


# Prepend to $PATH
if [[ $PATH != "$HOME/bin:"* ]]; then
    export PATH="$HOME/bin:$PATH"
fi


# Append $PATH
PATH_DIRS="
$HOME/.local/bin
$HOME/.ghar/bin
$HOME/opt/bin
$HOME/node_modules/.bin
/usr/local/heroku/bin
"
for DIR in $PATH_DIRS
do
    if [ -d $DIR ]; then
        if [[ ":$PATH:" != *":$DIR:"* ]]; then
            export PATH="$PATH:$DIR"
        fi
    fi
done


# Sets the window title when in a screen terminal
screen_set_window_title () {
    if [[ -z $SCREEN_TITLE ]]; then
        local SCREEN_TITLE="`hostname`"
    fi
    printf '\ek%s\e\\' "$SCREEN_TITLE"
}
if [[ "$TERM" = "screen"* ]]; then
    if [[ $PROMPT_COMMAND != "screen_set_window_title;"* ]]; then
        export PROMPT_COMMAND="screen_set_window_title; $PROMPT_COMMAND"
    fi
fi

link_auth_sock(){
    # reconnects ssh auth socket upon new login
    if [ -n "$SSH_AUTH_SOCK" ] && [ -e "$SSH_AUTH_SOCK" ]  && [ "$SSH_AUTH_SOCK" != "$HOME/.ssh/ssh_auth_sock_link" ]; then
        export OLD_SSH_AUTH_SOCK=$SSH_AUTH_SOCK
        ln -sf "$SSH_AUTH_SOCK" $HOME/.ssh/ssh_auth_sock_link
        export SSH_AUTH_SOCK=$HOME/.ssh/ssh_auth_sock_link
        echo "linking: $OLD_SSH_AUTH_SOCK -> $SSH_AUTH_SOCK"
    fi
}

if which powerline-daemon &> /dev/null ; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  POWERLINE_BASH_WIDTH=40
  POWERLINE_FILES="
/usr/share/powerline/bash/powerline.sh
/usr/share/powerline/bindings/bash/powerline.sh
/usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
"
  for SOURCE_FILE in $POWERLINE_FILES
  do
    if [ -f $SOURCE_FILE ]; then
        . $SOURCE_FILE
    fi
  done
fi

link_auth_sock

reauth() {
    export SSH_AUTH_SOCK=$(find /tmp -maxdepth 2 -type s -name "agent*" -user $USER -printf '%T@ %p\n' 2>/dev/null |sort -n|tail -1|cut -d' ' -f2)
    echo "found: $SSH_AUTH_SOCK"
    link_auth_sock
}

# added by pipsi (https://github.com/mitsuhiko/pipsi)
export PATH="/Users/dave.forgac/.local/bin:$PATH"
