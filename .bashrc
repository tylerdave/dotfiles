# Environment variables
export EDITOR=vim
PS1="[\u@\h:\w]$ "


# Aliases
alias svnd='svn --diff-cmd diff -x "-y --suppress-common-lines" diff | less'
alias grin='grin --force-color'
alias less='less -R'
# print a nice timestamp
alias ts='date +"%Y-%m-%d-%H:%M:%S"'


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


# Source additional settings files
SOURCE_FILES="
/etc/bashrc
/usr/bin/virtualenvwrapper.sh
$HOME/.bashrc-local
$HOME/.ghar/ghar-bash-completion.sh
"
for SOURCE_FILE in $SOURCE_FILES
do
    if [ -f $SOURCE_FILE ]; then
        . $SOURCE_FILE
    fi
done


# Prepend to $PATH
if [[ $PATH != "$HOME/bin:"* ]]; then
    PATH="$HOME/bin:$PATH"
fi

# Append $PATH
PATH_DIRS="
/usr/local/heroku/bin
$HOME/.local/bin
$HOME/.ghar/bin
"
for DIR in $PATH_DIRS
do
    if [ -d $DIR ]; then
        if [[ ":$PATH:" != *":$DIR:"* ]]; then
            PATH="$PATH:$DIR"
        fi
    fi
done
export PATH


# Sets the window title when in a screen terminal
screen_set_window_title () {
    if [[ -z $SCREEN_TITLE ]]; then
        local SCREEN_TITLE="`hostname`"
    fi
    printf '\ek%s\e\\' "$SCREEN_TITLE"
}
if [ "$TERM" = "screen" ]; then
    PROMPT_COMMAND="screen_set_window_title; $PROMPT_COMMAND"
fi


# reconnects ssh auth socket upon new login
if [ -n "$SSH_AUTH_SOCK" ] && [ -e "$SSH_AUTH_SOCK" ]  && [ "$SSH_AUTH_SOCK" != "$HOME/.ssh/ssh_auth_sock_link" ]; then
    ln -sf "$SSH_AUTH_SOCK" $HOME/.ssh/ssh_auth_sock_link
fi

