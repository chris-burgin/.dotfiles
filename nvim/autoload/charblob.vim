0
  call setline(1, luaeval(
  \    'require("charblob")',
  \    [getline(1, '$'), &textwidth, '  ']))
endfunction

if exists('g:charblob_loaded')
  finish
endif
let g:charblob_loaded = 1

command MakeCharBlob :call charblob#sayHi_buffer()
