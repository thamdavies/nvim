### Setup
1. Install Vim plugin manager (skip this step if already have installed it), please take a look at this link: https://github.com/junegunn/vim-plug#unix-linux
2. Clone this repo: `git clone -b nvim-coc git@github.com:thamdavies/nvim.git ~/.config/nvim`
3. Install a code searching tool similar to ack, with a focus on speed. See more at https://github.com/ggreer/the_silver_searcher
```bash
# MacOS
brew install the_silver_searcher

# Linux
sudo apt-get install silversearcher-ag
```
4. Navigate to `~/.config.nvim/init.vim` directory, run this command to install the plugins `:PlugInstall`
5. Enjoy your Vim ;))
### Language server integration
#### Rails integration
1. Install solargraph by:
```
gem install solargraph solargraph-rails
```
In your vim/neovim, run command:
```
:CocInstall coc-solargraph
```
2. Config solargraph for Rails (WIP)

Please note that this configuration is optional, free to use without it.
```bash
ln -s ~/.config/nvim/ruby-ls/.solargraph.yml ~/.config/solargraph/.config.yml
```
Install a Ruby Documentation Tool (YARD) by:
```
gem install yard
```
In your Project root run `bundle exec yard gems`

### Cheatsheets
| Command    | Content               |
|------------|-----------------------|
| Space + ff | Find project files    |
| Space + fw | Find words in project |
| Space + b  | Toggle file explore   |
| gd         | Go to definition      |
| ...        | ...                   |
Explore more mappings at `init.vim` file.
