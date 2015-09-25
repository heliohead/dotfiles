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
Plug 'scrooloose/NERDTree'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'Tabular'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-xmark', { 'do': 'make'  }
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'henrik/vim-ruby-runner', { 'for': 'ruby'  }
Plug 'tpope/vim-rails.git', { 'for': 'ruby'  }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby'  }
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'plasticboy/vim-markdown', { 'for': 'markdown'  }
Plug 'suan/vim-instant-markdown', { 'for': 'markdown'  }
Plug 'burnettk/vim-angular', { 'for': 'javascript'  }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffescript'  }
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}
" ...
call plug#end()

filetype plugin indent on     " required!

" Theme config
let g:dracula_termcolors = 256
colorscheme dracula
let macvim_skip_colorscheme=1
set modelines=0
syntax enable
set nu
set ruler


" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Enable mouse use in all modes
set mouse=a

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
nnoremap ; :
highlight ExtraWhitespace ctermbg=red guibg=red

" Whitespace fixes
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * :%s/\s\+$//e

let mapleader = ","


let g:html_indent_inctags = "html,body,head,tbody"

" Limited line on 80 chars
set textwidth=80
set colorcolumn=+1

"Settings for markdown plugin
set nofoldenable    " disable folding
let g:vim_markdown_folding_disabled=1

" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" search remap
nnoremap / /\v
vnoremap / /\v
set ignorecase
set wildignorecase " Ignore case for open files
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

" Select pasted text
nnoremap <leader>v V`]

" Avoid bad identation when paste text
nnoremap <C-i> :set invpaste paste?<CR>
set pastetoggle=<C-i>

" Buffers
nnoremap <leader>T :enew<cr>
nnoremap gy :bnext<CR>
nnoremap gt :bprevious<cr>
nnoremap gd :bdelete<cr>
nnoremap <leader>bl :ls<CR>

" Map Crtl p to Fuzzy Finder
noremap <C-p> :FZF<CR>
inoremap <C-p> <C-o>:FZF<CR>

" On insert mode short to begin and end of line
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" On insert mode short to begin and end of word
inoremap <silence> <C-j> <C-o>b
inoremap <silence> <C-k> <C-o>e

" Airline settings
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts=1

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
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

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
set pastetoggle=<leader>p
nnoremap <leader>m :w <BAR> !lessc % > %:t::r.css<CR><space>
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

" Shortcut to .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif


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
set matchtime=0
source ~/.vim/bundle/simple-utilities.vim
let g:instant_markdown_autostart = 1

" Alias these common mistypes, Shitf+w -> w
command W w
command Wq wq
command WQ wq
command Q q

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

set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline=%<[%n]\ %F\ %m%r%y\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}\ %=%-14.(%l,%c%V%)\ %P>
