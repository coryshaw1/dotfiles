#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                                            # dotfiles directory
olddir=~/dotfiles_old                                     # old dotfiles backup directory
files=".bash_profile .zshrc .tmux.conf .gitignore_global" # list of files to symlink in homedir
directories=".applescripts .config/nvim .config/oh-my-posh"         # list of directories to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

for directory in $directories; do
    echo "Moving any existing dotfile directories from ~ to $olddir"
    mv ~/$directory ~/dotfiles_old/

    echo "Creating symlink to $directory in home directory."
    ln -s $dir/$directory ~/$directory
done

install_zsh () {
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone my oh-my-zsh repository from GitHub only if it isn't already present
    if [[ ! -d ~/.config/oh-my-posh/ ]]; then
        echo "!==================================!"
        echo "!==================================!"
        echo "!=MAKE SURE TO INSTALL OH MY POSH!=!"
        echo "!==================================!"
        echo "!==================================!"
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s $(which zsh)
    fi
else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
        if [[ -f /etc/redhat-release ]]; then
            sudo yum install zsh
            install_zsh
        fi
        if [[ -f /etc/debian_version ]]; then
            sudo apt-get install zsh
            install_zsh
        fi
    # If the platform is OSX, tell the user to install zsh
    elif [[ $platform == 'Darwin' ]]; then
        echo "Please install zsh and oh my zsh, then re-run this script!"
        exit
    fi
fi
}

install_zsh
