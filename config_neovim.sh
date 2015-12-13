#/bin/bash


NEOVIM_PATH="$HOME/.config/nvim"
NEOVIM_PLUGGED_PATH=$NEOVIM_PATH"/plugged"

if [ ! -d $NEOVIM_PLUGGED_PATH ]; then
    echo "Create dir for neovim..."
    mkdir -p $NEOVIM_PLUGGED_PATH
    echo $NEOVIM_PLUGGED_PATH
fi

# Link neovim config
ln -s $(pwd)/init.vim  $NEOVIM_PATH"/init.vim"


