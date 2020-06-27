set number relativenumber
set tabstop=4
set shiftwidth=4
set mouse=a      " enable all mouse features
set list
set lcs+=space:· " whitespace is represented as ·
set clipboard+=unnamedplus

" set syntax highlighting options.
syntax on

" Color scheme
set background=dark
" color gruvbox

hi! Normal ctermbg=NONE guibg=NONE

"plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'wincent/command-t'

call plug#end()

" some autocmd
autocmd vimenter *.c NERDTree
autocmd bufwritepost *.c :!ctags -R .
"autocmd shellcmdpost * <Enter> " this one is not working :(

" mappings
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+P
noremap <C-s> :w<Enter>
noremap <C-q> :qa<Enter>
nmap <silent> <Leader>f <Plug>(CommandTTag)
