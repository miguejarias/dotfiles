# Set up my dev environment

### Setup symlinks and create needed folders

```
mkdir -p ~/code/sites

ln -s ~/.dotfiles/config ~/.config
ln -s ~/.dotfiles/wallpapers ~/Pictures/Wallpapers
ln -s ~/.dotfiles/startpage ~/code/sites/startpage
```

### Install Homebrew

Open up Terminal.app and run the following command to install homebrew. Install x-code command line tools with it as well.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Setup terminal emulator (kitty) and shell (fish)

```
brew install --cask kitty && brew install fish
```

Brew will install fish either to /usr/local/bin/fish or /opt/homebrew/bin/fish, you can check by visiting those directories and seeing where it's in. To make fish your default shell, run the commands below:

#### If installed in /usr/local/bin/fish

```
echo '/usr/local/bin/fish' >> /etc/shells
chsh -s /usr/local/bin/fish
```

#### If installed in /opt/homebrew/bin/fish

```
echo '/opt/homebrew/bin/fish' >> /etc/shells
chsh -s /opt/homebrew/bin/fish
```

### Install workflow apps

Install the app "Hotkey app" from the apple app store. Next install the rest via Homebrew:

```
brew install --cask rectangle && brew install --cask karabiner-elements && brew install --cask alfred
```

- Hotkey app is used to set hotkeys to open/hide/close any app.
- Rectangle is a window manager
- Karabiner elements is to add extra functionality to your keyboard, like changing your caps lock key to be cmd + opt + ctrl + shift
- Alfred is like a spotlight but better.

#### Customize Alfred

Find click on the carbon theme file in ~/.dotfiles/alfred/themes/Carbon, Alfred will then ask to import the theme, cick yes.

### Setup code editors and IDE's

Currently I use either vim/neovim to edit minor things and phpstorm for more heavy coding.

#### Install vim and neovim

```
brew install neovim && brew install vim
```

I also install these below for some functionality within my neovim:

#### Extra neovim functionality

```
brew install tree-sitter && brew install the_silver_searcher
```

#### Install python rust and node

```
brew install python && brew install rust && brew install node
```

#### Setup Packer

I setup packer for neovim package management by following the instructions [here](https://github.com/wbthomason/packer.nvim#quickstart). Once that's installed, open up neovim, type ,, and you'll be taken to the configuration file. Run :PackerSync to install all packages.

#### Setup Coc stuff

Once all packages are installed, run the following command to setup necessary Coc stuff:

```
:CocInstall coc-phpls coc-blade coc-css coc-docker coc-eslint coc-html coc-json coc-php-cs-fixer coc-prettier coc-tailwindcss coc-vetur coc-yaml
```

#### Install PHPStorm

```
brew install --cask phpstorm
```

### Setup local PHP environment

Install docker desktop [here](https://docs.docker.com/desktop/install/mac-install/), all other apps can be installed via Homebrew:

```
brew install php && brew install composer && brew install mysql && brew install --cask tableplus
```

Add composer to $PATH variable:

```
fish_add_path ~/.composer/vendor/bin
```

#### Install & setup Laravel Valet

```
composer global require laravel/valet; valet install; cd ~/code/sites; valet park;
```

#### Install Laravel installer

```
composer global require laravel/installer
```

### Install and setup Firefox

```
brew install --cask firefox
```

#### Customize firefox.

1. go to about:config
2. make sure the following settings are set to true:
   - toolkit.legacyUserProfileCustomizations.stylesheets
   - layers.acceleration.force-enabled
   - gfx.webrender.all
   - svg.context-properties.content.enabled
3. navigate to ~/Library/Application Support/Firefox/Profiles
4. look for default release, for example: pgy1qc89.default-release-1656976481202
5. symlink our user chrome styles: ln -s ~/.dotfiles/firefox/chrome chrome

### Install productivity apps

Install Trello via the appstore, all other apps can be installed via Homebrew:

```
brew install --cask anydo && brew install --cask 1password && brew install --cask gifox
```
