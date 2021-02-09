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

" Sets relative line numbers and showing the true line number on the active line.
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

" Searching
set ignorecase
set smartcase

" Highlight the current line the cursor is on.
set cursorline

" Map Q to q to deal with my constant fat fingering.
command Q q

" fold
set foldmethod=indent
set foldlevel=99

" fix color scheme problem
let g:dracula_colorterm = 0

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'christoomey/vim-tmux-navigator'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

Plug 'cohama/lexima.vim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'tpope/vim-dadbod'
call plug#end()

" theme
set t_Co=256
colorscheme dracula
let g:airline_theme='dracula'

" airline
let g:webdevicons_enable_airline_statusline = 1
let g:airline#extensions#nvimlsp#enabled = 1
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
inoremap <silent><expr> <CR>      compe#confirm(lexima#expand('<LT>CR>', 'i'))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" telescope
nnoremap <C-p> <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>

" treesitter (theme highlighting and more)
lua require'treesitter_setup'

" prettier
autocmd BufWritePre *.js,*.ts,*.tsx,*.scss,*.json,*.md,*.yaml,*.html PrettierAsync

"dadbod
let g:b5 = 'mysql://root:@127.0.0.1/b5'
command -nargs=1 OPDB DB g:b5 <args>

