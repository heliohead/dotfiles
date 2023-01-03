let g:mix_format_on_save = 1

autocmd BufWritePost *.heex silent :!mix format %
