" Plugins
call plug#begin('~/.vim/plugged')
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'NLKNguyen/papercolor-theme'
Plug 'christoomey/vim-tmux-navigator'
Plug 'gruvbox-community/gruvbox'
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set t_Co=256

" light
set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

" dark theme
" set background=dark
" colorscheme GruvBox
" let g:airline_theme='gruvbox'

" airline
let g:webdevicons_enable_airline_statusline = 1
let g:airline#extensions#nvimlsp#enabled = 1

nnoremap <C-p> <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({previewer = false}))<CR>
nnoremap <Leader>f <cmd>lua require'telescope.builtin'.live_grep{}<CR>

" prettier
autocmd BufWritePre *.js,*.ts,*.scss,*.json,*.md,*.yaml,*.html PrettierAsync

" treesitter - not required
" run TSInstall all
:lua << END
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "gnr",
      },
    },
  }
END

" folding using treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" lsp completion
" You need to run `:LspInstall [language]` to get started with the language
" below or follow the install instructions for each language here: https://github.com/neovim/nvim-lspconfig#configurations
:lua << END
  require'nvim_lsp'.cssls.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.gopls.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.vuels.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.rls.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.sumneko_lua.setup{on_attach=require'completion'.on_attach}
  require'nvim_lsp'.vimls.setup{on_attach=require'completion'.on_attach}
END

nnoremap <silent> <F2>  <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gF    <cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr    <cmd>lua require'telescope.builtin'.lsp_references{}<CR>
nnoremap <silent> gy    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> qf    <cmd>lua vim.lsp.buf.code_action()<CR>

" set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" avoid showing message extra message when using completion
set shortmess+=c

" show diagnostic messages inline
let g:diagnostic_enable_virtual_text = 1 

" diagnostic commands
noremap <leader>do :OpenDiagnostic<CR>
noremap <leader>] :NextDiagnosticCycle<CR>
noremap <leader>[ :PrevDiagnosticCycle<CR>
