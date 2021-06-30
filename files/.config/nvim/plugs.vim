call plug#begin(expand('~/.config/nvim/_deps'))

" Tools
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-projectionist'
Plug 'tomtom/tcomment_vim'
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'schickling/vim-bufonly'
Plug 'janko-m/vim-test'
Plug 't9md/vim-textmanip'
Plug 'clearnote01/notes_syntax_vim'
Plug 'mikepjb/vim-chruby'
Plug 'kassio/neoterm'
Plug 'jremmen/vim-ripgrep', { 'commit': '0df3ac2c3e51d27637251a5849f892c3a0f0bce0' }
Plug 'tpope/vim-surround'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Navigate/Search
Plug 'scrooloose/NERDTree', {'on':  'NERDTreeToggle'}
Plug 'unblevable/quick-scope'
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }"
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Theme
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'jreybert/vimagit'

" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'p0deje/vim-ruby-interpolation'
Plug 'rhysd/vim-textobj-ruby'

" Python
Plug 'Vimjas/vim-python-pep8-indent'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hankchiutw/flutter-reload.vim'


" Crystal
" Plug 'rhysd/vim-crystal', {'for': 'cristal'}

" Elixir
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

" Other languages
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'slim-template/vim-slim', {'for': 'slim'}
Plug 'dag/vim-fish'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
" Plug 'maksimr/vim-jsbeautify'

" Plug 'johngrib/vim-game-code-break'

call plug#end()

filetype plugin indent on

command! Pgrade PlugUpgrade | PlugUpdate
