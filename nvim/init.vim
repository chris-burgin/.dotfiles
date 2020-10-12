" netrw
let g:netrw_liststyle = 0
let g:netrw_sizestyle= "H" " show human readable file sizes
let g:netrw_sort_options = "i" " ignore case when sorting
let g:netrw_sort_sequence = '[\/]$,*,\.bak$,\.o$,\.h$,\.info$,\.swp$,\.obj$'

" map keys
imap <silent> jj <Esc>

" tabs, most of this is controlled via 'tope/vim-sleuth'
set tabstop=2
set shiftwidth=2

" line wrapping
set nowrap

" line numbers
set number relativenumber
autocmd TermOpen * setlocal nonumber norelativenumber

" real time replace
set inccommand=split

" split below and right
set splitbelow
set splitright

"split resize
noremap <Left> :vertical resize +3<CR>
noremap <Right> :vertical resize -3<CR>
noremap <Up> :resize +3<CR>
noremap <Down> :resize -3<CR>

" dont resize for split
set noea

" dont abandom buffers when hidden
set hidden 

" affects how long it takes coc or vim-go to notice changes
set updatetime=300

" always show signcolumns
set signcolumn=yes

" highlight merge conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Use esc to leave insert mode and go to normal mode while in :term
tnoremap <Esc> <C-\><C-n>

" folding
set foldmethod=syntax   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" searching
set ignorecase
set smartcase

" cursor line
set cursorline

" map Q to q to deal with typo
command Q q

" load other config files
source $HOME/.config/nvim/_plugins.vim
source $HOME/.config/nvim/_functions.vim
