" Alias these common mistypes, Shitf+w -> w
if !exists(':W')
  command W w
endif
if !exists(':Wq')
  command Wq wq
endif
if !exists(':WQ')
  command WQ wq
endif
if !exists(':Q')
  command Q q
endif

iabbrev spc &nbsp;
