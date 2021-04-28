# Nvim

## add the repo

$ sudo add-apt-repository ppa:neovim-ppa/unstable

# update & install

$ sudo apt-get update
$ sudo apt-get install neovimu

## Start with init.lua

- create folder : home/yourUserName/.configure/nvim
- copy repository
- install plugin manager

### Vim-Plug manager

```zsh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### Install Packer

- you need running Neovim v0.5 and newer
```zsh
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

 - after cloning this repo, run commands:

 `:PackerInstall` and `LspInstall efm dockerfile python cpp bash cmake yaml html lua latex`
