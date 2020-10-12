function! Night()
  set background=dark
  colorscheme GruvBox
  let g:airline_theme='gruvbox'
endfunction

function! Day()
  set background=light
  colorscheme PaperColor
  let g:airline_theme='papercolor'
endfunction

function! MakeTerminals()
    :execute 'term'
    :execute 'file app'

    :execute 'term'
    :execute 'file test'

    :execute 'term'
    :execute 'file term'
endfunction
nnoremap <leader>t :call MakeTerminals() <CR>

