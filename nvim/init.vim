" netrw setup.
let g:netrw_liststyle = 0
let g:netrw_sizestyle= "H" " show human readable file sizes
let g:netrw_sort_options = "i" " ignore case when sorting
let g:netrw_sort_sequence = '[\/]$,*,\.bak$,\.o$,\.h$,\.info$,\.swp$,\.obj$'

" Basic tabs setup.
set tabstop=2
set shiftwidth=2

" Do not wrap lines.
set nowrap

" Sets relative line numbers and showing the true line number on the active
" line.
set number relativenumber
autocmd TermOpen * setlocal nonumber norelativenumber

" Real time search and replace.
set inccommand=split

" Split below and right.
set splitbelow
set splitright

" Map arrow keys to resize splits.
noremap <Left> :vertical resize +3<CR>
noremap <Right> :vertical resize -3<CR>
noremap <Up> :resize +3<CR>
noremap <Down> :resize -3<CR>

" Don't resize for splits when one is closed
set noequalalways

" Don't abandom buffers when hidden.
set hidden 

" Time to write swap, speeds up many plugins.
set updatetime=300

" Always show the sign column to keep consistent spacing.
set signcolumn=yes

" Use esc to leave insert mode and go to normal mode while using the built in
" terminal.
tnoremap <Esc> <C-\><C-n>

" Folding
set foldmethod=syntax   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Searching
set ignorecase
set smartcase

" Highlight the current line the cursor is on.
set cursorline

" Map Q to q to deal with my constant fat fingering.
command Q q

" Plugins have been broken out into their own config file.
source $HOME/.config/nvim/_plugins.vim
