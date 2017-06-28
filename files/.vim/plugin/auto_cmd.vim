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

" Neomake
autocmd! BufWritePost * Neomake

" Neocomplete filebased completion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,liquid setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

au WinLeave * setlocal nonu norelativenumber
au WinEnter * setlocal nu relativenumber
au WinLeave * setlocal nocursorline
au WinEnter * setlocal cursorline
