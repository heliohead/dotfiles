let g:airline_skip_empty_sections = 1
set laststatus=2
set statusline=%<[%n]\ %F\ %m%r%y\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}\ %=%-14.(%l,%c%V%)\ %P>
let g:airline#extensions#tabline#enabled =1
" let g:airline_powerline_fonts=1
let g:airline_theme= 'lucius'
" let g:airline_theme= 'bubblegum'
" " let g:airline_mode_map = {
" "       \ '__' : '-',
" "       \ 'n'  : '⛵️ ',
" "       \ 'i'  : '🔨 ',
" "       \ 'R'  : 'Ṝ',
" "       \ 'c'  : 'C',
" "       \ 'v'  : '👓 ',
" "       \ 'V'  : '👓',
" "       \ 's'  : 'Ṡ',
" "       \ 'S'  : 'Ṡ',
" "       \ }
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
