call plug#begin(expand('~/.vim/plugged'))

" Tools
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tomtom/tcomment_vim'
Plug 'benekastah/neomake'
Plug 'jiangmiao/auto-pairs'
" Plug 'Raimondi/delimitMate'
Plug 'schickling/vim-bufonly'
Plug 'janko-m/vim-test'
Plug 't9md/vim-textmanip'
Plug 'clearnote01/notes_syntax_vim'
Plug 'jremmen/vim-ripgrep'
" Plug 'idbrii/textobj-word-column.vim'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'christoomey/vim-tmux-runner'
" Plug 'christoomey/vim-tmux-navigator'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Navigate/Search
" Plug 'matze/vim-move'
Plug 'scrooloose/NERDTree', {'on':  'NERDTreeToggle'}
Plug 'unblevable/quick-scope'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'mileszs/ack.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

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
Plug 'p0deje/vim-ruby-interpolation', {'for': 'ruby'}
Plug 'rhysd/vim-textobj-ruby', {'for': 'ruby'}
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'henrik/vim-ruby-runner', {'for': 'ruby'}
" Plug 'christoomey/vim-tmux-runner', {'for': 'ruby'}
" Plug 't9md/vim-ruby-xmpfilter', {'for': 'ruby'}

" Crystal
Plug 'rhysd/vim-crystal', {'for': 'cristal'}

" Elixir
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}

" Other languages
" Plug 'strogonoff/vim-coffee-script', {'for': 'coffee'}
" Plug 'kewah/vim-stylefmt', {'for': 'css'}
" Plug 'udalov/kotlin-vim'
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'slim-template/vim-slim', {'for': 'slim'}
Plug 'dag/vim-fish'

" Plug 'johngrib/vim-game-code-break'

call plug#end()

filetype plugin indent on

command! Pgrade PlugUpgrade | PlugUpdate
