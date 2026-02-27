# HTCondor Configuration syntax file for VIM/Neovim
A simple VIM/Neovim plugin that brings syntax highlighting to
[HTCondor](https://htcondor.org/) configuration files.

The filetype is called htc-config.

# Installation

## VIM

### [vundle](https://github.com/VundleVim/Vundle.vim)
```vim
vundle#begin()
Plugin 'carmelopellegrino/htc-admin.vim'
vundle#end()
```

## Neovim

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    'carmelopellegrino/htc-admin.vim',
},
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    'carmelopellegrino/htc-admin.vim',
},
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```lua
Plug 'carmelopellegrino/htc-admin.vim'
```
