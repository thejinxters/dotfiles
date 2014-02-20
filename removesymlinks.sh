#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vim vimrc zshrc bashrc oh-my-zsh"    # list of files/folders to symlink in homedir

##########


# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving restoring any dotfiles that were moved"
    mv $olddir/.$file ~/.$file
done

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
rm -rf $olddir
echo "...done"

