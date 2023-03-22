"this flie (") is comment 
echo '( >^.^< ) hi! YJT' 

"about display line number 
set number  " display line number
set relativenumber  
set numberwidth=1

"about display text
set wrap  " wrap line
set tabstop=4 " set 4 space of tap key 
set shiftwidth=4




set hlsearch " hight light search
set backspace " can use backspace key to delete
set autoindent " auto indent
set ruler " can display the state of last row
set showmode " can display the state of left down 
set bg=dark " set background color 'dark'
syntax on " check syntax


"about shotcut
let mapleader="," 

"select word
nnoremap <leader><space> viw

"exchange current line and next line
nnoremap <leader>- ddp

"copy current line to next line
nnoremap <leader>+ yyp

"copy current line to next line when in insert mode


"delete current line when in insert mode
inoremap <leader><c-d> <esc>dd$O

"trans current word to upper
inoremap <leader><c-u> <esc>viwU$a

"split open ~/.vimrc to edit, it can help us note shotcut quickly
nnoremap <leader>ev :split $MYVIMRC<cr>
"source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"inset "" to a word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

"return to normal
inoremap jk <esc>

"abbreviations replace my email and copyright
iabbrev @@ hlyjt2000@163.com
iabbrev ccopy  Copyright 2023 yjt, all rights reserved

" c/c++ commont
nnoremap <leader>, ^i// <esc>
nnoremap <leader>. ^llld0i<tab><esc>

" add tab
nnoremap <leader>t ^i<tab><esc>


