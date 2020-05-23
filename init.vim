set number relativenumber
set tabstop=4
set shiftwidth=4
set mouse=a      " enable all mouse features
set list
set lcs+=space:· " whitespace is represented as ·

" set syntax highlighting options.
syntax on

" Color scheme
set background=dark
color gruvbox

hi! Normal ctermbg=NONE guibg=NONE

"plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'wincent/command-t'

" autocomplete stuff for neovim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()
