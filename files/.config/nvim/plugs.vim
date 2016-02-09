call plug#begin(expand('~/.config/nvim/_deps'))

" Tools
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-markdown'
Plug 'tomtom/tcomment_vim'
Plug 'benekastah/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-xmark', {'do': 'make'}
Plug 'terryma/vim-multiple-cursors'
" Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'craigemery/vim-autotag'
Plug 'schickling/vim-bufonly'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Navigate/Search
Plug 'rking/ag.vim'
Plug 'matze/vim-move'
Plug 'scrooloose/NERDTree', {'on': 'NERDTreeToggle'}
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}

" Theme
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}

" Ruby
Plug 'henrik/vim-ruby-runner', {'for': 'ruby'}
Plug 'christoomey/vim-tmux-runner', {'for': 'ruby'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'p0deje/vim-ruby-interpolation', {'for': 'ruby'}
Plug 't9md/vim-ruby-xmpfilter', {'for': 'ruby'}

" Other languages
Plug 'strogonoff/vim-coffee-script', {'for': 'coffee'}
Plug 'sheerun/vim-polyglot'

call plug#end()

filetype plugin indent on

command! Pgrade PlugUpgrade | PlugUpdate
