#!/bin/bash

# Install the DrSpeedy i3wm configuration on any user
# from remote repository

WORKING_DIRECTORY="/tmp"
SYS_DEPENDENCIES=('git')

check_if_already_installed() {
    if [ -d $HOME/.vim ]; then
        echo "A vim configuration is already in place!"
        while true; do
            read -r -p "Would you like to back it up? [y/N]" yn
            case "$yn" in
                [Yy] ) backup_previous_config
                    break
                    ;;

                [Nn] )	break
                    ;;

                * ) echo "Please answer yes or no"
                    ;;
            esac
        done
    fi
}

check_dependencies() {
    echo "Checking dependencies..."
    for dep in "${SYS_DEPENDENCIES[@]}"; do
        which "$dep" > /dev/null 2>&1
        if [ $? -eq 1 ]; then
            echo "[Error] Broken dependency: $dep"
            exit 1
        fi
    done
}

backup_previous_config() {
    echo "Backing up previous configuration..."
    mv $HOME/.vim $HOME/.vim.b-$(date +'%Y%d%m')
}

install_configuration() {
    echo "Grabbing remote configuration..."

    # Remove conflicting setups if they exist
    if [ -d $HOME/.vim ]; then
        rm -rf $HOME/.vim
        unlink $HOME/.vimrc
    fi

    git clone https://github.com/DrSpeedy/vimrc.git $HOME/.vim
    ln -s $HOME/.vim/vimrc $HOME/.vimrc
}

install_vim_plugins() {
    echo "Installing vim plugins..."

    mkdir -p $HOME/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
}

check_dependencies
check_if_already_installed
install_configuration
install_vim_plugins

echo "Done."
