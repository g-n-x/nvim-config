set number relativenumber
set tabstop=4
set shiftwidth=4
set mouse=a      " enable all mouse features
set list
set lcs+=space:· " whitespace is represented as ·
set clipboard+=unnamedplus

" hide vertsplit
set fillchars=vert:\ 
hi VertSplit term=NONE cterm=NONE gui=NONE guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE

" set syntax highlighting options.
syntax on

" Color scheme
set background=dark

hi! Normal ctermbg=NONE guibg=NONE

"plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'wincent/command-t'
Plug 'vifm/vifm.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

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

" moving lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" FZF
map <C-f> <Esc><Esc>:Files!<CR>
inoremap <C-f> <Esc><Esc>:BLines!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>
