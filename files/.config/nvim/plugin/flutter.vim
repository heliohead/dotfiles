" function! TriggerHotReloadFlutter()
"   silent !clear
"   execute '!kill -SIGUSR1 "$(pgrep -f flutter_tools.snapshot)"'
" endfunction
"
" function! TriggerRestartFlutter()
"   silent !clear
"   execute '!kill -SIGUSR2 "$(pgrep -f flutter_tools.snapshot)"'
" endfunction
"
" " autocmd BufWritePost *.dart call TriggerHotReload()
" map <silent> <Leader>fr :call TriggerHotReloadFlutter()<cr><cr>
" map <silent> <Leader>ft :call TriggerRestartFlutter()<cr><cr>
" nnoremap <buffer> <localleader>fr :call TriggerHotReloadFlutter()<cr>
" map <Leader>fd :!kill -SIGUSR2 "$(pgrep -f flutter_tools.snapshot)"<cr>
let g:dart_format_on_save = 1
nnoremap <silent> <Leader>fr :FlutterHotRestart<CR>
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
