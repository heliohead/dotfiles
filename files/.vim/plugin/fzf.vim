" let $FZF_DEFAULT_COMMAND= 'rg --files --no-ignore --hidden --follow -g "!.*" -g "!{tmp/*,00*,coverage/*}" -g "!*.{png,jpg,gif,svg,dump}" -g "!public/assets/*"'
"
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow -g "!.*" -g "!{tmp/*,00*,coverage/*}" -g "!*.{png,jpg,gif,svg,dump}" --color "always" '.shellescape(<q-args>), 1, <bang>0)
