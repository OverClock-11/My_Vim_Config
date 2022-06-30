set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set number
set vb t_vb=
set tabstop=4


nmap <space> :
nmap r <C-w>

"Plugs
call plug#begin('~/.vim/plugged')

"NERDTree Settings
Plug 'scrooloose/nerdtree'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


call plug#end()


"Comment Color Setting
hi comment ctermfg=6
