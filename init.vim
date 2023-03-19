"remaps leader; better to do this first of all
nnoremap <SPACE> <Nop>
let mapleader=" "

"plugins
"the order may matter
"~/.config/nvim/lua/plugins.lua
lua require('plugins')
source $HOME/.config/nvim/pluginconf/coqconf.lua
source $HOME/.config/nvim/pluginconf/lspconfig.lua
source $HOME/.config/nvim/pluginconf/Telescope.lua
source $HOME/.config/nvim/pluginconf/indent.lua
source $HOME/.config/nvim/pluginconf/treesitter.lua
source $HOME/.config/nvim/pluginconf/devicons.lua
source $HOME/.config/nvim/pluginconf/dapconfig.lua

"Colors
source $HOME/.config/nvim/pluginconf/gruvboxmaterialconf.vim

"Options
source $HOME/.config/nvim/settings.vim

"Keybinds
source $HOME/.config/nvim/mappings.vim
