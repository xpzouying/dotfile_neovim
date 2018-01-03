#oh-my-zsh config

1. Install zsh && oh-my-zsh

```bash
brew install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

2. Install zplug
    `brew install zplug`

3. (Optional) Install `fzf` or install fzf by nvim plugin

4. Install colors supports
    `brew install coreutils`

5. Set zsh to default shell
    - for linux: chsh -s `which zsh`
    - for mac osx: chsh -s /bin/zsh