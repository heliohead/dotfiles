call plug#begin(expand('~/.config/nvim/_deps'))

" Tools
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-abolish'
Plug 'tomtom/tcomment_vim'
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'schickling/vim-bufonly'
Plug 'janko-m/vim-test'
Plug 't9md/vim-textmanip'
Plug 'clearnote01/notes_syntax_vim'
Plug 'kassio/neoterm'
" Plug 'jremmen/vim-ripgrep', { 'commit': '0df3ac2c3e51d27637251a5849f892c3a0f0bce0' }
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-surround'
Plug 'kamykn/spelunker.vim'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Navigate/Search
" Plug 'scrooloose/NERDTree'
Plug 'lambdalisue/fern.vim'
Plug 'unblevable/quick-scope'
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }"
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-scriptease'
Plug 'ggandor/leap.nvim'

" Theme
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'
Plug 'lambdalisue/fern-git-status.vim'
" Plug 'jreybert/vimagit'

" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'rhysd/vim-textobj-ruby'
Plug 'ecomba/vim-ruby-refactoring'

" Python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'

" Dart
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'thosakwe/vim-flutter'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'hankchiutw/flutter-reload.vim'


" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Crystal
" Plug 'rhysd/vim-crystal', {'for': 'cristal'}

" Elixir
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}

" Plug 'slashmili/alchemist.vim', {'for': 'elixir'}
" Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

" Other languages
Plug 'junegunn/vim-xmark', { 'do': 'make' }
" Plug 'slim-template/vim-slim', {'for': 'slim'}
Plug 'dag/vim-fish'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
" Plug 'maksimr/vim-jsbeautify'

" Plug 'johngrib/vim-game-code-break'
"
" Plug 'neoclide/coc.nvim', { 'branch': 'release', 'for': 'elixir' }
" Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack', 'for': 'elixir'}
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'editorconfig/editorconfig-vim'

call plug#end()

filetype plugin indent on

command! Pgrade PlugUpgrade | PlugUpdate
runtime macros/matchit.vim
