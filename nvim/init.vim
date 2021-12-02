" custom leader key
let mapleader = " "

" Basic tabs setup.
set tabstop=2
set shiftwidth=2

" Do not wrap lines.
set nowrap

" Sets relative line numbers and showing the true line number on the active line.
set number relativenumber
autocmd TermOpen * setlocal nonumber norelativenumber

" Don't abandom buffers when hidden.
set hidden 

" Time to write swap, speeds up many plugins.
set updatetime=300

" Always show the sign column to keep consistent spacing.
set signcolumn=yes

" Real time search and replace.
set inccommand=split

" Improve searching
set ignorecase
set smartcase

" Split below and right.
set splitbelow
set splitright

" Don't resize for splits when one is closed
set noequalalways

" Map arrow keys to resize splits.
noremap <Left> :vertical resize +3<CR>
noremap <Right> :vertical resize -3<CR>
noremap <Up> :resize +3<CR>
noremap <Down> :resize -3<CR>

" quick fix and location list navigation
noremap <Leader>j :cn<CR>
noremap <Leader>k :cp<CR>
noremap <C-j> :lne<CR>
noremap <C-k> :lp<CR>

" Highlight the current line the cursor is on.
set cursorline

" terminal colors
set termguicolors

" fold
set foldmethod=indent
set nofoldenable

" Map Q to q to deal with my constant fat fingering.
command Q q

" Test focus commands
command! Nof %s/\(it\|describe\|test\)\zs\.only\ze//g

" Plugins
lua require'config'

" custom theme colors
highlight LspDiagnosticsDefaultError guifg=#d70000
