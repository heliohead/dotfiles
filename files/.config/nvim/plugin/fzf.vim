nnoremap <silent> <expr> <Leader><Leader>
              \ (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
nnoremap <silent> <expr> <Leader>p
              \ (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"

