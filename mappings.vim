"jk and kj for exiting insert
inoremap jk <Esc>
inoremap kj <Esc>

"swap 0 and ^
nnoremap 0 ^
nnoremap ^ 0

"noh (coq overwrites this)
"nnoremap <C-h> :noh<CR>

"Keep things centered(When searching)
nnoremap n nzzzv
nnoremap N Nzzzv

"Better concat
nnoremap J mzJ`z

"Reformat lines
map Q gq

"Move lines up and down(pretty useless gimmick)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"???
"xnoremap <leader>p "_dP

"yank to clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nmap <leader>Y "+Y

"delete lines without yanking them to register
nnoremap <leader>d "_d
vnoremap <leader>d "_d

"insert newlines without leaving normal
nmap <leader>o m`o<Esc>``

"----------------------Pluginmaps----------------------------------
"for sandwich
nmap s <Nop>
xmap s <Nop>

"undotree
nnoremap <leader>u :UndotreeToggle<CR>

" ~/.config/nvim/pluginconf/autocomplete.vim
" ~/.config/nvim/pluginconf/lspconfig.lua

"floaterm bindings (filetype specific run command defined in ftplugins)
let g:floaterm_keymap_toggle = '<M-t>'

"Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fw <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>ts <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>fd <cmd>lua require('telescope.builtin').diagnostics({ bufnr=0 })<cr>
nnoremap <leader>p <cmd>lua require('telescope.builtin').registers({layout_strategy='cursor',layout_config={width=0.6,height=0.4}})<cr>

"dap
lua << EOF
    vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
    vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
    vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
    vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
    vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
    vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
    vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end)
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)
EOF
