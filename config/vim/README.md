# My Vim/Macvim Setup

Hey. This is my configuration setup for vim/macvim. I highly recommend using macvim with this setup although using regular terminal vim will work just fine as well

### Clone Repository

First navigate to your home directory and git clone this repo

```
git clone git@github.com:miguejarias/.vim.git
```

Rename this repo to be .vim

```
mv .vim.git .vim
```

### Install plugins

Navigate into the vimrc file and install all plugins

```
:PlugInstall
```

### Improve project file browsing

Add a .ignore file into your project and add in there all directories and files that you 
want to exclude from ctrl+p searching. Use the .ignore file provided in this repo as
an example for you if you like.

### Notes

- Default leader key is comma ","
- Default sidebar position is "right"
- Close files with cmd+w on macvim without worrying that it will close all of macvim. 
- Edit vimrc with ,, and gvimrc with ,g
- cmd+p or ctrl+p to browse files in macvim and vim
- ctrl+e to browse recently viewed files. I'd like to change it to cmd+e but dont know how.
- cmd+1 to open and close sidebar like in phpstorm
- Press the dash key "-" open up a full-page file browser
- ctrl+f to search anything accross whole project and jump to file with search result
- ctrl+s to search and replace anything accross the whole project
- All searching uses Ag which is very very fast
- vimrc is automatically sourced whenever it's saved.
