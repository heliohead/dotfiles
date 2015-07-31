set nocompatible
filetype off
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
Plugin 'tpope/vim-rails.git'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'plasticboy/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'editorconfig-vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'danro/rename.vim'
Plugin 'scrooloose/NERDTree'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'suan/vim-instant-markdown'
" Plugin 'jaxbot/browserlink.vim'
Plugin 'henrik/vim-ruby-runner'
Plugin 'benmills/vimux'
Plugin 'digitaltoad/vim-jade'
Plugin 'burnettk/vim-angular'
" ...

call vundle#end()            " required
filetype plugin indent on     " required!

"set guifont       = "Monaco:14"
let g:colors_name = "dracula"
let macvim_skip_colorscheme=1
set modelines=0
syntax enable
set nu
set ruler

" remap arrow keys
noremap <Down> gj
noremap <Up> gk

" copy
vnoremap <C-c> "*y

" mult cursors
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-s>'

" Command T settings
let g:CommandTInputDebounce = 200
let g:CommandTFileScanner = "watchman"
let g:CommandTWildIgnore = &wildignore . ",**/bower_components/*" . ",**/node_modules/*" . ",**/vendor/*"
let g:CommandTMaxHeight = 30
let g:CommandTMaxFiles = 500000

"Some tips from http://stevelosh.com/blog/2010/09/coming-home-to-vim/"

set tabstop=2  shiftwidth=2  softtabstop=2
set expandtab
set encoding=utf-8
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
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
let mapleader = ","

" Limited line on 80 chars
set textwidth=80
set colorcolumn=+1

"Custom settings
set nofoldenable    " disable folding
let g:vim_markdown_folding_disabled=1

" search remap
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" clear search
nnoremap <leader><space> :noh<cr>

" match the next brace
nnoremap <tab> %
vnoremap <tab> %
set wrap
set formatoptions=qrn1
set linebreak

" remap movement to move by column layout
nnoremap j gj
nnoremap k gk

"User customizations"

" Strips whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Select pasted text
nnoremap <leader>v V`]

" Avoid bad identation when paste text
nnoremap <C-i> :set invpaste paste?<CR>
set pastetoggle=<C-i>
set showmode

" Buffers
nnoremap <leader>T :enew<cr>
nnoremap gy :bnext<CR>
nnoremap gt :bprevious<cr>
nnoremap gd :bdelete<cr>
nnoremap <leader>bl :ls<CR>

" Map Crtl p to Fuzzy Finder
noremap <C-p> :FZF<CR>
inoremap <C-p> <C-o>:FZF<CR>

" NerdTree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" On insert mode short to begin and end of line
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" On insert mode short to begin and end of word
inoremap <silence> <C-j> <C-o>b
inoremap <silence> <C-k> <C-o>e

" Airline settings
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts=1
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.txt set filetype=markdown
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.test set filetype=php
autocmd BufRead,BufNewFile *.inc set filetype=php
autocmd BufRead,BufNewFile *.profile set filetype=php
autocmd BufRead,BufNewFile *.view set filetype=php
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
autocmd BufRead,BufNewFile *.twig set ft=htmldjango
autocmd BufRead,BufNewFile *.rabl set ft=ruby
autocmd BufRead,BufNewFile *.jade set ft=jade
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Neocomplete filebased completion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" Whitespace fixes
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set undolevels=20
set title

set noerrorbells
set noswapfile
set nobackup
nnoremap ; :


" Tabular
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a: :Tabularize /:\zs<CR>
vnoremap <leader>a: :Tabularize /:\zs<CR>

" Vimux
nnoremap <silent> cr :VimuxRunCommand("clear; ruby " . bufname("%"))<CR>
nnoremap <silent> ct :VimuxCloseRunner<CR>

" Custom maps
set pastetoggle=<leader>p
nnoremap <leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

nnoremap <leader>vi :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

" Save
noremap  <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" Abbreviations
iabbrev adn and
iabbrev waht what
nnoremap H 00
nnoremap L $
inoremap jk <esc>

" Arrow keys law
"nnoremap <left> :echoe "Use h"<CR>
"nnoremap <right> :echoe "Use l"<CR>
"nnoremap <up> :echoe "Use k"<CR>
"nnoremap <down> :echoe "Use j"<CR>

"inoremap <left> <nop>
"inoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"Ctrl P
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'


" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set fileformat=unix
set fileformats=unix,dos

" Abbreviations
"augroup abbreviations
"autocmd!
"autocmd FileType html :iabbrev <buffer> --- &mdash;
"autocmd FileType javascript :iabbrev <buffer> ret return
"augroup END
set timeout
set ttimeout
set ttimeoutlen=0

" Kill trailing spaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
set matchtime=0
source ~/.gvimrc
source ~/.vim/bundle/simple-utilities.vim
let g:instant_markdown_autostart = 0

" Enable mouse use in all modes
set mouse=a
set ttymouse=xterm2
