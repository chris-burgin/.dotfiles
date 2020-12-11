" Plugins
call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" to be removed
" Plug 'tpope/vim-sleuth'
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
" You need to run `:LspInstall [language]` to get started with the language
" below or follow the install instructions for each language here:
" https://github.com/neovim/nvim-lspconfig#configurations.
"
" For gopls you will need to install `golang-x-tools-gopls`.
" 
lua require'lsp_setup'

" lsp kep mapings
nnoremap <silent> <F2>  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> sd    <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <silent> gy    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> qf    <cmd>lua vim.lsp.buf.code_action()<CR>

" set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" avoid showing message extra message when using completion
set shortmess+=c

" golang sort imports
autocmd BufWritePre *.go lua require'functions'goimports(1000)

" telescope
nnoremap <C-p> <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>

" treesitter
lua require'treesitter_setup'

