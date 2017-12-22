call plug#begin(expand('~/.vim/plugged'))

" Tools
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tomtom/tcomment_vim'
Plug 'benekastah/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'schickling/vim-bufonly'
Plug 'janko-m/vim-test'
Plug 't9md/vim-textmanip'
Plug 'jremmen/vim-ripgrep'
Plug 'rorymckinley/vim-rubyhash'
Plug 'sunaku/vim-ruby-minitest'
Plug 'hwartig/vim-seeing-is-believing'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Navigate/Search
Plug 'scrooloose/NERDTree', {'on':  'NERDTreeToggle'}
" Plug 'unblevable/quick-scope'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Theme
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails'
Plug 'kana/vim-textobj-user'
Plug 'p0deje/vim-ruby-interpolation', {'for': 'ruby'}
Plug 'rhysd/vim-textobj-ruby', {'for': 'ruby'}

" Other languages
Plug 'slim-template/vim-slim', {'for': 'slim'}
" Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
" Plug 'rhysd/vim-crystal', {'for': 'cristal'}
Plug 'dag/vim-fish'

" Plug 'johngrib/vim-game-code-break'

call plug#end()

filetype plugin indent on

command! Pgrade PlugUpgrade | PlugUpdate
