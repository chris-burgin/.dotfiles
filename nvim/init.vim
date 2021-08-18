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
Plug 'hoob3rt/lualine.nvim'

Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'onsails/lspkind-nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'chris-burgin/query.nvim'
call plug#end()

" theme
set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

"lualine
lua require'config-lualine'

" treesitter
lua require'config-treesitter'

" lsp completion
lua require'config-lsp'

" compe
lua require'config-compe'
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" fzf
nnoremap <leader>ff <cmd>:GFiles<cr>

" query.nvim
lua require'config-query'
