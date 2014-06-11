#!/bin/bash
# clones ghar to $HOME/.ghar, adds dotfiles repo(s) and installs dotfiles
# Assumes that dependencies (git, python) are installed and available

set -e

# Uses tylerdave's clone of ghar for stability
GHAR_REPO="git@github.com:tylerdave/ghar.git"

# Update to use your own dotfiles repos, unless you really want my dotfiles ;-)
# The order of the repos matters! If there are duplicate filenames, only the
# first instance will be installed.

DOTFILE_REPOS="
git@github.com:tylerdave/dotfiles.git
"

# Create $HOME subdirs if they don't exist
DIRS="
bin
var/log
tmp
.vim/bundle
"
for DIR in $DIRS
do
    if [ ! -d $HOME/$DIR ]; then
        mkdir -p $HOME/$DIR
    fi
done


if [ -d $HOME/.ghar ]; then
    echo "ghar has already been bootstrapped. Try running $HOME/.ghar/bin/ghar"
    exit 1
fi

echo "* Installing ghar..."
git clone $GHAR_REPO $HOME/.ghar


echo "* Adding repos..."
for REPO in $DOTFILE_REPOS
do
    $HOME/.ghar/bin/ghar add $REPO
    $HOME/.ghar/bin/ghar install
    echo "** Repo installed: $REPO"
done

echo ""
echo " You may wish to source your new .bashrc to get ghar on your \$PATH:"
echo " . $HOME/.bashrc"
echo ""
echo " You may now update your vim plugins:"
echo " vim +PluginInstall +qall"
echo ""
echo "Done."
