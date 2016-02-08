source $HOME/.config/nvim/plugs.vim

filetype off
let mapleader = "\<Space>"

set nocompatible
set tabstop=2  shiftwidth=2  softtabstop=2
set expandtab
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set cursorline
set list
set history=200
set title
set noerrorbells
set noswapfile
set nobackup
set mouse=a
set ignorecase
set wildignorecase " Ignore case for open files
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set formatoptions=qrn1
set linebreak
set fileformats=unix,dos
set timeout
set ttimeout
set ttimeoutlen=0
set matchtime=0
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set nofoldenable


if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
