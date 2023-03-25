" vimScript information ---------------------- {{{
"this file (") is comment 

"}}}

" Basic settings ---------------------- {{{
echo '( >^.^< ) hi! YJT' 

" when read file
augroup filetype_all
	autocmd BufWrite * :echom "Writing buffer!"
augroup END

"about display line number 
set number  " display line number
set relativenumber  
set numberwidth=1

"about display text
set wrap  " wrap line
set tabstop=4 " set 4 space of tap key 
set shiftwidth=4

" set word spell
set spell

" set
set guiheadroom=0

" remember cursor of last close file
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

set hlsearch " hight light search
set backspace " can use backspace key to delete
set autoindent " auto indent
set ruler " can display the state of last row
set showmode " can display the state of left down 
set bg=dark " set background color 'dark'
syntax on " check syntax

"}}}

" Mapping settings ---------------------- {{{
"about shortcut
let maplocalleader="," 

"return to normal
inoremap jk <esc>

" add tab
nnoremap <buffer> <localleader>t ^i<tab><esc>

"abbreviations replace my email and copyright
iabbrev @@ hlyjt2000@163.com
iabbrev ccopy  Copyright 2023 yjt, all rights reserved

"select word
nnoremap <buffer> <localleader><space> viw

"exchange current line and next line
nnoremap <buffer> <localleader>- ddp

"copy current line to next line
nnoremap <buffer> <localleader>+ yyp

"delete current line when in insert mode
inoremap <buffer> <localleader><c-d> <esc>dd$O

"trans current word to upper
inoremap <buffer> <localleader><c-u> <esc>viwU$a

"split open ~/.vimrc to edit, it can help us note shortcut quickly
nnoremap <buffer> <localleader>ev :split $MYVIMRC<cr>
"source vimrc
nnoremap <buffer> <localleader>sv :source $MYVIMRC<cr>

"inset "" to a word
nnoremap <buffer> <localleader>" viw<esc>a"<esc>hbi"<esc>lel

"}}}

" FileType-specific settings ---------------------- {{{

" c++ files ---------------------- {{{
" comment
augroup filetype_cxx_comment
	autocmd FileType cxx nnoremap <buffer> <localleader>, I//<esc>
	autocmd FileType cxx nnoremap <buffer> <localleader>. Ixx<esc>
augroup END
"}}}

" python files ---------------------- {{{
" comment
augroup filetype_python_comment
	autocmd FileType python nnoremap <buffer> <localleader>, I#<esc>
	autocmd FileType python nnoremap <buffer> <localleader>. I<esc>x
augroup END

"}}}

" bash shell files ---------------------- {{{
" comment
augroup filetype_bash_comment
	autocmd FileType bash nnoremap <buffer> <localleader>, I#<esc>
	autocmd FileType bash nnoremap <buffer> <localleader>. I<esc>x
augroup END

"}}}

" Vimscript files ---------------------- {{{
" comment
augroup filetype_vim_comment
	autocmd FileType vim nnoremap <buffer> <localleader>, I"<esc>
	autocmd FileType vim nnoremap <buffer> <localleader>. I<esc>x
augroup END
" Code folding
augroup filetype_vim_code_fold
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"}}}


" status settings ---------------------- {{{
" status line
set statusline=%f\ -
set statusline+=FileType:\ %y 
"}}}




































