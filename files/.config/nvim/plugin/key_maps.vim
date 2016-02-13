" Arrow keys law
"nnoremap <left> :echoe "Use h"<CR>
"nnoremap <right> :echoe "Use l"<CR>
"nnoremap <up> :echoe "Use k"<CR>
"nnoremap <down> :echoe "Use j"<CR>

"inoremap <left> <nop>
"inoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>

nnoremap ; :
noremap YY "+y<CR>
"noremap <leader>pa "+gP<CR>
noremap XX "+x<CR>

" Change words shortcut C{target}/{new word}<CR>
nmap C :%s//g<LEFT><LEFT>

" Invert visual select with visual line
noremap v <S-v>
noremap <S-v> v

" On insert mode short to begin and end of line
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" On insert mode short to begin and end of word
inoremap <silent> <C-j> <C-o>b
inoremap <silent> <C-k> <C-o>e
nnoremap H 00
nnoremap L $

" Custom maps
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <C-c> "*y

" Shortcut to .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

" Abbreviations
iabbrev adn and
iabbrev waht what

" search remap
nnoremap / /\v
vnoremap / /\v
" clear search
nnoremap <silent><leader>c :noh<CR>

" remap movement to move by column layout
nnoremap j gj
nnoremap k gk

" Avoid bad identation when paste text
nnoremap <C-i> :set invpaste paste?<CR>
set pastetoggle=<C-i>

" remap arrow keys
noremap <Down> gj
noremap <Up> gk

" copy
vnoremap <C-c> "*y

" NerdTree config
nmap <C-n> :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeToggle<CR>

" Clipboard toggle
nnoremap <leader>= :set clipboard=unnamed<CR>
nnoremap <leader>- :set clipboard=""<CR>

" Erase Ruby comments
nnoremap <leader>3 :g/^\s*#/d<CR>

" Change surround "" to ''
noremap <leader>ss :normal cs"'<CR>

" Convert old style ruby hashes to new style
noremap <leader>ns :s/:\(\w*\)\s*=> /\1: /g<CR>

" Erase all spaces
nnoremap <leader>es :%s/\s\{1,}//gc<CR>

" Buffers
noremap <silent><tab> :bn<CR>
noremap <silent><s-tab> :bp<CR>
nmap <silent><leader>d :bdelete<CR>

