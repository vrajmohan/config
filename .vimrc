set nocompatible              " Not required if >= vim 8

filetype plugin indent on    " required
autocmd FileType python setlocal colorcolumn=81
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
set cursorline

set pastetoggle=<F2>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :!ctags -R<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>f :Files<CR>
nmap <silent> <leader>s :Git grep <cword><CR>

cmap w!! w !sudo tee % >/dev/null

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'yegappan/lsp'
call plug#end()

let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [#{
\  name: 'pylsp',
\  filetype: ['python'],
\  path: exepath('pylsp'),
\ },
\#{
\  name: 'ruby-lsp',
\  filetype: ['ruby'],
\  path: exepath('ruby-lsp'),
\ },
\#{
\  name: 'hls',
\  filetype: ['haskell'],
\  path: exepath('haskell-language-server-wrapper'),
\ },
\#{
\  name: 'Rust Language Server',
\  filetype: ['rust'],
\  path: exepath('rust-analyzer'),
\ },
\]
autocmd User LspSetup call LspAddServer(lspServers)

nmap <silent> <leader>rt :LspDocumentSymbol<CR>
