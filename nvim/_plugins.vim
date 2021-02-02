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
call plug#end()

" theme
set t_Co=256
colorscheme dracula
let g:airline_theme='dracula'

" airline
let g:webdevicons_enable_airline_statusline = 1
let g:airline#extensions#nvimlsp#enabled = 1
silent! call airline#extensions#whitespace#disable()

" prettier
autocmd BufWritePre *.js,*.ts,*.tsx,*.scss,*.json,*.md,*.yaml,*.html PrettierAsync

" lsp completion
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
