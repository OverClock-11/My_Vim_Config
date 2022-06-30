set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set number
set vb t_vb=
set tabstop=4

nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <space> :
nmap vs vsplit

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()
