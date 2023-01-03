" Syntax setup
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.txt set filetype=markdown
autocmd BufRead,BufNewFile *.module set filetype=vim
autocmd BufRead,BufNewFile *.install set filetype=vim
autocmd BufRead,BufNewFile *.test set filetype=vim
autocmd BufRead,BufNewFile *.inc set filetype=vim
autocmd BufRead,BufNewFile *.profile set filetype=bash
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
autocmd BufRead,BufNewFile *.rabl set ft=ruby
autocmd BufNewFile,BufRead *.xls.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.xls.erb set filetype=eruby
autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.pdf.erb set filetype=eruby
autocmd BufRead,BufNewFile *.jade set ft=jade
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.html set filetype=html
autocmd BufRead,BufNewFile *.vue set filetype=html
autocmd BufRead,BufNewFile *.es6 set filetype=javascript

au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir

" " Neomake
" autocmd! BufWritePost * Neomake

" Neocomplete filebased completion
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown,liquid setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

au WinLeave * setlocal nonu norelativenumber
au WinEnter * setlocal nu relativenumber
au WinLeave * setlocal nocursorline
au WinEnter * setlocal cursorline

" Auto magically Mkdir
" ====================

autocmd BufWritePre * call MkDir()

function! MkDir()
  if !isdirectory(expand("<afile>:p:h"))
    let confirmation=confirm("Create a new directory?", "&Yes\n&No")
    if confirmation == 1
      call mkdir(expand("<afile>:p:h"), "p")
      lcd %:p:h
      saveas %:t
      echom "Created a new directory:" expand("<afile>:p:h")
      let buf_del = bufnr("$")
      exe "bd" . buf_del
    endif
    redraw
  endif
endfunction

let g:python_highlight_all = 1
