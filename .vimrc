"============================== My Settings =========================
syntax on
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   
set wildmenu
set number
set relativenumber
set ignorecase
set smartcase
set vb t_vb=

" Tab Setting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set hlsearch
set showcmd
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set autochdir

" Let your cursor set in the last time edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 

" Comment Color Setting
hi comment ctermfg=6


"set list  "Show space in txt
"set mouse=a  "make your mouse available
"set laststatus=2

"============================== My Maps =============================
nmap <space> :
nmap J 5j
nmap K 5k
map s <nop>

map sr :set splitright<CR>
map sv :set nosplitright<CR>

map <C-k> :res +5<CR>
map <C-j> :res -5<CR>
map <C-h> :vertical resize-5<CR>
map <C-l> :vertical resize+5<CR>




"============================== My Plugs ============================
call plug#begin('~/.vim/plugged')

" NERDTree Settings
Plug 'scrooloose/nerdtree'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
highlight NERDTreeFile ctermfg=14



" Airline - Line theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:airline_theme='dark_minimal'
let g:airline_theme='supernova'

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'


call plug#end()

