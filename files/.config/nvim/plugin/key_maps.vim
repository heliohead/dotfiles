" Arrow keys law " nnoremap <left> :echoe "Please learn to use h"<CR>
" nnoremap <right> :echoe "Please learn to use l"<CR>
" nnoremap <Up> :echoe "Please learn to use k"<CR>
" nnoremap <down> :echoe "Please learn to use j"<CR>


" inoremap <left> <nop>
" inoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>

" insertmode on line above
nnoremap <A-o> j A
" remap movement to move by column layout
nnoremap j gj
nnoremap k gk
nnoremap gd <nop>

" copy
vnoremap <C-c> "*y
noremap YY "+y
"noremap <leader>pa "+gP<CR>
noremap XX "+x<CR>

" Change words shortcut C{target}/{new word}<CR>
nmap C :%s// <LEFT><LEFT>

" Invert visual select with visual line
noremap v <S-v>
noremap <S-v> v
noremap <C-v> <S-v><C-v>

" On insert mode short hands
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b

nnoremap H 00w
nnoremap L $

" Custom maps
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>( <esc>`<i(<esc>`>a)<esc>
vnoremap <leader>) <esc>`<i( <esc>`>a )<esc>
vnoremap <leader>yc :let @+=@:<CR>

nnoremap <leader>w :w!<CR>

" Braces around word
nnoremap <leader>r9 ciw()<esc>P<esc>

" Visual mark to end of line
nmap <leader>ve <s-v> g_

" Abbreviations
iabbrev adn and
iabbrev edn end
iabbrev waht what

" search remap
nnoremap / /\v
vnoremap / /\v
" clear search<CR>
nnoremap <silent><leader><leader> :noh <CR> :cclose <CR>

" Clipboard toggle
nnoremap <leader>= :set clipboard=unnamed<CR>
nnoremap <leader>- :set clipboard=""<CR>

" Erase Ruby comments
nnoremap <leader>3 :g/^\s*#/d<CR>

" Change surround "" to ''
noremap <leader>ss :normal sr"'<CR>

" Convert old style ruby hashes to new style
noremap <leader>ns :s/:\(\w*\)\s*=> /\1: /g<CR>

noremap <leader>sn :s/\<\(\h\w*\)\.\(\w\+\)\>/\1["\2"]/g <CR>

" Erase all spaces
nnoremap <leader>es :%s/\s\{1,}//gc<CR>

" Git checkout
nnoremap <leader>co :Git checkout %<CR>

" Erase empty lines
nnoremap <leader>el :g/^$/d<CR>

" Buffers
" noremap <silent><tab> :bn<CR>
" noremap <silent><s-tab> :bp<CR>
nnoremap <silent><leader>d :bd<CR>
" nnoremap <silent><leader>o :Bonly <CR> :Fern . -drawer -reveal=% -width=35 -toggle <CR>
nnoremap <silent><leader>o :Bonly <CR> :only <CR>
nnoremap <silent><leader>bd :bp\|bd \#<CR>
nnoremap <silent><leader>fd :bdelete!<CR>


" Open info file
nnoremap <silent><leader>nn :e ~/info.txt<CR>

" Multiline edit
nnoremap <leader>i *Ncgn

nnoremap <leader>tl :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tp :TestLast<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>ct :!bash -c 'ctags -R --exclude=.git --exclude=tmp --exclude=node_modules --exclude=public --exclude=coverage .'<CR>
" inoremap <A-c> ç
" inoremap <S-A-c> Ç
" inoremap <A-e> <C-K>
" inoremap <A-n> <C-K>~
" inoremap <A-i> <C-K>
nnoremap <C-s> :w<CR>

cnoremap <C-A>      <Home>
cnoremap <C-B>      <Left>
cnoremap <C-E>      <End>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <End>
cnoremap <C-P>      <Up>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>

cnoreabbrev gc Gcommit --amend

cnoreabbrev rg Rg
cnoreabbrev RG Rg

cnoreabbrev qq qa!

nnoremap <leader>rg :execute "Rg " . expand("<cword>")<cr>

" Terminal window nav
noremap <C-w><C-w> <C-\><C-n><C-w>k
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Set scrolloff
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

nnoremap <Leader>fs :vsplit **/*
nnoremap <Leader>fe :e **/*

nnoremap Q <ESC>

nnoremap <silent> <expr> <Leader>ff
              \ (expand('%') =~ 'fern' ? "\<c-w>\<c-w>" : '').":GFiles\<cr>"

nnoremap <silent> <expr> <tab>
              \ (expand('%') =~ 'fern' ? "\<c-w>\<c-w>" : '').":bn<CR>"

nnoremap <silent> <expr> <s-tab>
              \ (expand('%') =~ 'fern' ? "\<c-w>\<c-w>" : '').":bp<CR>"
nnoremap <silent>gs :Git<CR>

tnoremap <Esc> <C-\><C-n>

" Git nav
nnoremap <Leader>gj :GitGutterNextHunk<CR>
nnoremap <Leader>gk :GitGutterPrevHunk<CR>

xnoremap p "_dP
