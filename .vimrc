set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline.git'
Plugin 'kien/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set hlsearch incsearch
set ignorecase smartcase
set ts=4 sw=4 expandtab ai ci
set shiftround
set showmatch
set number
set guifont=Ubuntu\ Mono\ 14
syntax on
set guioptions-=T
set hidden
set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell noerrorbells
set nobackup
set noswapfile
set pastetoggle=<F2>

set laststatus=2 "For vim-airline

au BufReadCmd   *.epub      call zip#Browse(expand("<amatch>"))

let g:ScreenImpl = 'Tmux'
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \ if &omnifunc == "" |
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif


map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> ,/ :nohlsearch<CR>
cmap w!! w !sudo tee % >/dev/null


