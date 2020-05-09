set nocompatible              " Not required if >= vim 8

filetype plugin indent on    " required
autocmd FileType * setlocal colorcolumn=81
autocmd FileType xhtml setlocal noexpandtab colorcolumn=

"Appearance
syntax on
colorscheme slate
set background=dark
set number
set title
set tabstop=4 shiftwidth=4 softtabstop=4 autoindent copyindent
set list lcs=trail:·,tab:→\ 
highlight colorcolumn ctermbg=magenta
set visualbell noerrorbells

"Search
set ignorecase smartcase
set shiftround
set showmatch
set hlsearch incsearch
nmap <silent> <C-l> :nohlsearch<CR>

set hidden
set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile

set pastetoggle=<F2>
map <F3> :Vex<CR>
map <F4> :TagbarToggle<CR>
map <F5> :!ctags -R<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

cmap w!! w !sudo tee % >/dev/null
