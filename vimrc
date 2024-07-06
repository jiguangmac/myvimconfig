set nocompatible
set number
set relativenumber
set shiftwidth=4
set showmatch
syntax on

let mapleader = "-"
iabbrev @@ 2415661580@qq.com

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <leader><c-d> <esc>ddi
inoremap <leader><c-u> <esc>viwU
nnoremap <leader><c-u> viwU
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>w :w<cr>
inoremap <leader>w <esc>:w<cr>
nnoremap <leader>i :wq<cr>
inoremap <leader>i <esc>:wq<cr>


inoremap jk <esc>
inoremap <esc> <nop>

onoremap p i(
onoremap r /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

augroup typegroup
autocmd!
autocmd BufWritePre,BufRead *.html :normal gg=G
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
autocmd FileType python     :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'

Plug 'easymotion/vim-easymotion'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()

" theme
set background=dark
colorscheme gruvbox
let g:airline_theme='ayu_dark'

"file manage
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>v :NERDTreeFind<cr>

"easymotion
nmap ss <Plug>(easymotion-s2)

"python_mode
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc=1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes','pep8','mccabe','pylint']
let g:pymode_options_max_line_length = 120