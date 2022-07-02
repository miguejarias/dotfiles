## Set up my dev environment
- Install homebrew = /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    - install x-code command line tools with it.

### Needed programs (via homebrew or curl)

#### Dev
- kitty terminal = brew install --cask kitty
- fish shell = brew install fish
- fisher (fish plugin manager) = curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
- pure-fish for prompt theme = fisher install pure-fish/pure
- neovim = brew install neovim
- vim = brew install vim
- php = brew install php
- python = brew install python
- rust = brew install rust
- the silver searcher = brew install the_silver_searcher
- tree sitter = brew install tree-sitter
- firefox = brew install --cask firefox
- docker desktop = use browser
- composer = brew install composer
- node/npm = brew install node
- laravel installer = composer global require laravel/installer; add composer to home path = $HOME/.composer/vendor/bin
- laravel valet = composer global require laravel/valet; valet install; cd ~/code/sites; valet park;
- tableplus = brew install --cask tableplus
- dbengin = brew install --cask dbngin

#### Productivity
- anydo = brew install --cask anydo
- trello = app store
- 1pass = brew install --cask 1password
- gifox = brew install --cask gifox

#### Workflow
- rectangle = brew install --cask rectangle
- karabiner-elements = brew install --cask karabiner-elements
- hotkey = app store

### Neovim language servers
- PHP = npm install -g intelephense
- EsLint = npm i -g vscode-langservers-extracted
- VueJs = npm install -g vls
- Tailwind = npm install -g @tailwindcss/language-server

### Symlinks
- Gitconfig = ln -s ~/.dotfiles/gitconfig ~/.gitconfig
- Wallpapers = ln -s ~/.dotfiles/wallpapers ~/Pictures/Wallpapers
- Config = ln -s ~/.dotfiles/config ~/.config