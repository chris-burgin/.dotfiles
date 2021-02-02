" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

Plug 'christoomey/vim-tmux-navigator'

Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" theme
set t_Co=256
set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

" airline
let g:webdevicons_enable_airline_statusline = 1
let g:airline#extensions#nvimlsp#enabled = 1

" prettier
autocmd BufWritePre *.js,*.ts,*.tsx,*.scss,*.json,*.md,*.yaml,*.html PrettierAsync

" lsp completion
"
" You need to run `:LspInstall [language]` to get started with the language
" below or follow the install instructions for each language here:
" https://github.com/neovim/nvim-lspconfig#configurations.
"
" For gopls you will need to install `golang-x-tools-gopls` if your on Fedora.
lua require'lsp_setup'

" tab to open completion and navigate forwards and backwards
imap <tab> <Plug>(completion_smart_tab)
imap <tab> <Plug>(completion_smart_tab)

" open completion on delete
let g:completion_trigger_on_delete = 1

" set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" avoid showing message extra message when using completion
set shortmess+=c

" golang sort imports
autocmd BufWritePre *.go lua require'functions'goimports(1000)

" telescope
nnoremap <C-p> <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>

" treesitter (theme highlighting and more)
lua require'treesitter_setup'
