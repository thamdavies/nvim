## Try out this config

Make sure to remove or move your current `nvim` directory

**IMPORTANT** Requires [Neovim v0.8.0](https://github.com/neovim/neovim/releases). Please [upgrade](#upgrade-to-latest-release) if you're on an earlier version. 
```
# Backup your old nvim config if it's already have!
mv ~/.config/nvim ~/.config/nvim-backup
git clone https://github.com/thamdavies/nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed. (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

**NOTE** [Mason](https://github.com/williamboman/mason.nvim) is now used to install and manage LSP servers, DAP servers, linters, and formatters via the `:Mason` command.

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
- Install ripgrep to search all files in the project folder [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [asdf](https://asdf-vm.com/).

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
git checkout v0.8.0
sudo make install
nvim -v
```

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra
