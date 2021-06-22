" custom leader key test
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

" quick fix and location list navigation
noremap <Leader>j :cn<CR>
noremap <Leader>k :cp<CR>
noremap <C-j> :lne<CR>
noremap <C-k> :lp<CR>

" Use esc to leave insert mode and go to normal mode while using the built in
" terminal.
tnoremap <Esc> <C-\><C-n>

" Improve searching
set ignorecase
set smartcase

" Highlight the current line the cursor is on.
set cursorline

" Map Q to q to deal with my constant fat fingering.
command Q q

" fold
set foldmethod=manual
set foldlevel=99

" Test focus commands
command! Nof %s/\(it\|describe\|test\)\zs\.only\ze//g

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'

Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'mhinz/vim-signify' " git gutter

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

Plug 'chris-burgin/query.nvim'
call plug#end()

" theme
set t_Co=256
set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

" airline
let g:webdevicons_enable_airline_statusline = 1
let g:airline#extensions#nvimlsp#enabled = 1
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#scrollbar#enabled = 0
silent! call airline#extensions#whitespace#disable()

" lsp completion
"
" For gopls you will need to install `golang-x-tools-gopls` if your on Fedora.
lua require'lsp_setup'

" golang sort imports
autocmd BufWritePre *.go lua require'functions'goimports(1000)

" autocomplete as you type
lua require'complete'
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" fzf
nnoremap <leader>ff <cmd>:GFiles<cr>

" treesitter (theme highlighting and more)
lua require'treesitter_setup'

" prettier
autocmd BufWritePre *.js,*.ts,*.tsx,*.scss,*.json,*.md,*.yaml,*.html PrettierAsync

" query.nvim
lua require'query'
