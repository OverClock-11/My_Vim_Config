"============================== My Settings =========================

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

"hi comment ctermfg=6 cterm=italic

" Let your cursor set in the last time edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 

"set list  "Show space in txt
"set mouse=a  "make your mouse available
"set laststatus=2

"============================== My Maps =============================
nmap <space> :
nmap J 5j
nmap K 5k
nmap bv <C-v>
nmap ff /

map s <nop>

map sr :set splitright<CR>
map sv :set nosplitright<CR>

map <C-k> :res +3<CR>
map <C-j> :res -3<CR>
map <C-h> :vertical resize-3<CR>
map <C-l> :vertical resize+3<CR>
map S :source $MYVIMRC<CR>

imap ff <ESC>/

"============================== My Plugs ============================
call plug#begin('~/.vim/plugged')

" NERDTree Settings
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
highlight NERDTreeFile ctermfg=14
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" Airline - Line theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:airline_theme='dark_minimal'
let g:airline_theme='supernova'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'


" Error checking
"Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Color Scheme
Plug 'connorholyday/vim-snazzy'
let g:SnazzyTransparent = 1
"let g:lightline = {'colorscheme' : 'default'}

call plug#end()

"color scheme
"color snazzy

color OverClock

