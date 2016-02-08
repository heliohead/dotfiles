if exists('$ITERM_SESSION_ID') && !exists('$TMUX')
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
else
  let &t_SI = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[0 q"
end
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

