

1. Plugins:
# vim-plug:
    https://github.com/junegunn/vim-plug

    installtion:
        curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# deoplete:
    installation: need python3, and pip3 install neovim.

# deoplete-go:
    pip2 install -U --user neovim jedi
    pip3 install -U --user neovim jedi

    go get -u github.com/nsf/gocode



# Start nvim and run:
    :PlugInstall
    :UpdateRemotePlugins



##### Others
1. gruvbox true color. Add following in .zshrc/.bashrc.

    ```bash
    source ~/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh
    ```


2. Quick look plugins

    ```bash
    brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
    ```

3. Colors not working in terminal. Add these in `~/.bashrc` or `~/.zshrc`

```bash
export CLICOLOR=1  
export LSCOLORS=ExFxBxDxCxegedabagacad  
```

4. DNS for github, insert these into /etc/hosts

**Github**  
**beijing port**  
151.101.72.133  assets-cdn.github.com   
151.101.72.249  github.global.ssl.fastly.net  
**hong kong**  
151.101.76.133  assets-cdn.github.com  
151.101.76.249  github.global.ssl.fastly.net  
