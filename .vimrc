"============================== My Settings =========================

color OverClock

"syntax on
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


"set list  "Show space in txt
"set mouse=a  "make your mouse available

"============================== My Maps =============================
nmap <space> :
nmap J 5j
nmap K 5k
nmap ff /

map s <nop>

map sr :set splitright<CR>
map sv :set nosplitright<CR>

map <C-k> :res +5<CR>
map <C-j> :res -5<CR>
map <C-h> :vertical resize-5<CR>
map <C-l> :vertical resize+5<CR>

imap ff <Esc>/


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
let g:airline#extensions#tabline#enabled = 1
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

" Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \'coc-json', 
  \'coc-git', 
  \'coc-css',
  \'coc-jedi',
  \]

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ ]
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"




call plug#end()



