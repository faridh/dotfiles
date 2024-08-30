set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kaicataldo/material.vim', { 'branch': 'main' }
Plugin 'Syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/indentpython.vim'
" Plug 'valloric/youcompleteme'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set smarttab
set expandtab
set colorcolumn=80
set wrap
set clipboard=unnamedplus,unnamed,autoselect
set encoding=utf-8
set foldmethod=indent
set foldlevel=99

" Syntax Highlighting
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

 if has("autocmd") && exists("+omnifunc") 
autocmd Filetype * 
    \ if &omnifunc == "" | 
    \  setlocal omnifunc=syntaxcomplete#Complete | 
    \ endif 
    endif 

" Enable mouse support in console
set mouse=a
" Line Numbers PWN!
set number
" Ignoring case is a fun trick
set ignorecase
set cul "Highlighting Current Line
" Always show current position
set ruler
" Height of the command bar
set cmdheight=2

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

au BufNewFile,BufRead *.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      \ set textwidth=79 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
      \ set tabstop=2 |
      \ set softtabstop=2 |
      \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1
colorscheme material

