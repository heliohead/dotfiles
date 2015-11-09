set nocompatible
source ~/.gvimrc
filetype off
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

call plug#begin('~/.vim/plugged')

" My Plugins here:
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'benmills/vimux'
Plug 'editorconfig-vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'danro/rename.vim'
Plug 'scrooloose/NERDTree', {'on':  'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on':  'NERDTreeToggle'}
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'Tabular'
Plug 'dkprice/vim-easygrep'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-xmark', {'do': 'make'}
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'henrik/vim-ruby-runner', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'burnettk/vim-angular', {'for': 'javascript'}
Plug 'kchmck/vim-coffee-script', {'for': 'coffescript'}
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}
Plug 'craigemery/vim-autotag'
Plug 'ryanoasis/vim-devicons'
call plug#end()
filetype plugin indent on " required!
" ...

" Theme config
set t_Co=256
colorscheme seoul256
let macvim_skip_colorscheme=1
set modelines=0
syntax enable
set nu
set ruler
highlight ExtraWhitespace ctermbg=red guibg=red
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:html_indent_inctags = "html,body,head,tbody"
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
set textwidth=80
set colorcolumn=+1

" Airline settings
set laststatus=2
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline=%<[%n]\ %F\ %m%r%y\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}\ %=%-14.(%l,%c%V%)\ %P>
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts=1
let g:airline_theme= 'ubaryd'
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : '⛵️ ',
      \ 'i'  : '🔨 ',
      \ 'R'  : 'Ṝ',
      \ 'c'  : 'C',
      \ 'v'  : '👓 ',
      \ 'V'  : '👓',
      \ 's'  : 'Ṡ',
      \ 'S'  : 'Ṡ',
      \ }
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '🔋 '

" Whitespace fixes
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * :%s/\s\+$//e

" remap arrow keys
noremap <Down> gj
noremap <Up> gk

" copy
vnoremap <C-c> "*y

" mult cursors
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-s>'

" coffee
let g:syntastic_coffee_coffeelint_args = "--csv --file config.json"
let g:syntastic_javascript_checkers = ['jshint']

" NerdTree config
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" UltiSnips Trigger configuration.
set runtimepath+=~/.vim/ultisnips_rep
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Settings for markdown plugin
set nofoldenable    " disable folding
let g:vim_markdown_folding_disabled=1

" ragtag
let g:ragtag_global_maps = 1

source ~/.vim/bundle/simple-utilities.vim

" Markdown
let g:instant_markdown_autostart = 1

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
set undolevels=20
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
set term=xterm-256color
set termencoding=utf-8

let mapleader = ","
nnoremap ; :

" search remap
nnoremap / /\v
vnoremap / /\v
" clear search
nnoremap <leader><space> :noh<cr>

" match the next brace
noremap <tab> %
vnoremap <tab> %

" remap movement to move by column layout
nnoremap j gj
nnoremap k gk

" Select pasted text
nnoremap <leader>v V`]

" Avoid bad identation when paste text
nnoremap <C-i> :set invpaste paste?<CR>
set pastetoggle=<C-i>

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

" Buffers
nnoremap <leader>T :enew<cr>
nnoremap gy :bnext<CR>
nnoremap gt :bprevious<cr>
nnoremap gd :bdelete<cr>

" Map Crtl p to Fuzzy Finder
noremap <C-p> :FZF<CR>
inoremap <C-p> <C-o>:FZF<CR>

" On insert mode short to begin and end of line
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" On insert mode short to begin and end of word
inoremap <silence> <C-j> <C-o>b
inoremap <silence> <C-k> <C-o>e

" Syntax setup
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
autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.pdf.erb set filetype=eruby
autocmd BufRead,BufNewFile *.jade set ft=jade

" Neocomplete filebased completion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Tabular
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a: :Tabularize /:\zs<CR>
vnoremap <leader>a: :Tabularize /:\zs<CR>

" Vimux
nnoremap <silent> cr :VimuxRunCommand("clear; ruby " . bufname("%"))<CR>
nnoremap <silent> ct :VimuxCloseRunner<CR>

" Custom maps
nnoremap <leader>m :w <BAR> !lessc % > %:t::r.css<CR><space>
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <C-c> "*y

" Shortcut to .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

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

" Alias these common mistypes, Shitf+w -> w
if !exists(':W')
  command W w
endif
if !exists(':Wq')
  command Wq wq
endif
if !exists(':WQ')
  command WQ wq
endif
if !exists(':Q')
  command Q q
endif

" Clipboard toggle
nnoremap <leader>= :set clipboard=unnamed<CR>
nnoremap <leader>- :set clipboard=""<CR>

" Show syntax highlighting groups for word under cursor
nmap <C-S-T> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"
" Set cursor to vertical line when in insert mode.
"
if exists('$ITERM_SESSION_ID') && !exists('$TMUX')
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
else
  let &t_SI = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[0 q"
end
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

