

1. Plugins:
# vim-plug:
    https://github.com/junegunn/vim-plug

    installtion:
        curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# deoplete:
    installation: need python3, and pip3 install neovim.

# deoplete-go:
    pip2 install --upgrade neovim
    pip3 install --upgrade neovim

    go get -u github.com/nsf/gocode



# Start nvim and run:
    :UpdateRemotePlugins



##### Others
1. gruvbox true color. Add following in .zshrc/.bashrc.
    source ~/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh

