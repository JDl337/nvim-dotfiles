syntax enable

set hidden

set pumheight=10

set ruler

"set mouse=a

set tabstop=4
set shiftwidth=0
set softtabstop=-1
set expandtab

set smartindent
set autoindent

set laststatus=0

set number
set relativenumber

set background=dark

set cursorline
set showtabline=2

set wrap
set linebreak

set splitbelow splitright

"???
au BufEnter * set fo-=c fo-=r fo-=o

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3

"undotree
let g:undotree_SetFocusWhenToggle = 1

"floaterm
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_opener = 'edit'

