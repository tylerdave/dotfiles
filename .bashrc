# Environment variables

export EDITOR=vim

SOURCE_FILES="
/etc/bashrc
/usr/bin/virtualenvwrapper.sh
"

for SOURCE_FILE in $SOURCE_FILES
do
    if [ -f $SOURCE_FILE ]; then
        . $SOURCE_FILE
    fi
done

# Prepend $PATH
PATH="$HOME/bin:$PATH"

# Append $PATH
PATH_DIRS="
/usr/local/heroku/bin
$HOME/.local/bin
"

for DIR in $PATH_DIRS
do
    if [ -d $DIR ]; then
        PATH="$PATH:$DIR"
    fi
done

export PATH
