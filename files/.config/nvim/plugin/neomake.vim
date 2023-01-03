" Neomake
" let g:neomake_verbose = 3
let g:neomake_logfile = '/tmp/neomake.log'
let g:neomake_ruby_reek_maker_errorformat =
        \ '%E%.%#: Racc::ParseError: %f:%l :: %m,' .
        \ '%W%f:%l: %m'
let g:neomake_ruby_reek_maker = {
    \ 'args': ['--single-line'],
    \ 'errorformat': g:neomake_ruby_reek_maker_errorformat,
    \ }
let b:neomake_ruby_rubocop_exe = "/Users/helio/.asdf/shims/rubocop"
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_python_enabled_makers = ['flake8', 'pylint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_elixir_enabled_makers = ['credo']
let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1
let g:neomake_python_python3_exe = '/usr/local/bin/python3'

function! MyOnBattery()
  if filereadable('/usr/bin/pmset')
    silent exe "!pmset -g batt | grep discharging"
    return !v:shell_error
  else
    return readfile('/sys/class/power_supply/AC/online') == ['0']
  endif
endfunction

if MyOnBattery()
  call neomake#configure#automake('w')
else
  call neomake#configure#automake('inrw', 1000)
endif
