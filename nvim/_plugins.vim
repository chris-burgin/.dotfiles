" Plugins
call plug#begin('~/.vim/plugged')
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'NLKNguyen/papercolor-theme'
Plug 'christoomey/vim-tmux-navigator'
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
lua require'lsp_setup'

" lsp kep mapings
nnoremap <silent> <F2>  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gF    <cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <silent> gy    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> qf    <cmd>lua vim.lsp.buf.code_action()<CR>

" telescope remaps
nnoremap <C-p> <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>

" set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" avoid showing message extra message when using completion
set shortmess+=c

" golang sort imports
autocmd BufWritePre *.go lua require'functions'goimports(1000)
