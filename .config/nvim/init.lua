-- terminal colors
vim.opt.termguicolors = true

-- custom leader key
vim.g.mapleader = " "

-- Basic tabs setup.
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Do not wrap lines.
vim.opt.wrap = false

-- Sets relative line numbers and showing the true line number on the active line.
vim.opt.relativenumber = true

-- Don't abandon buffers when hidden.
vim.opt.hidden = true

-- Time to write swap, speeds up many plugins.
vim.opt.updatetime = 300

-- Always show the sign column to keep consistent spacing.
vim.opt.signcolumn = "yes"

-- Real time search and replace.
vim.opt.inccommand = "split"

-- Improve searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

--  Split below and right.
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Don't resize for splits when one is closed
vim.opt.equalalways = false

-- Map arrow keys to resize splits.
vim.keymap.set("n", "<Left>", ":vertical resize +3<cr>")
vim.keymap.set("n", "<Right>", ":vertical resize -3<cr>")
vim.keymap.set("n", "<Up>", ":resize +3<cr>")
vim.keymap.set("n", "<Down>", ":resize -3<cr>")

-- quick fix and location list navigation
vim.keymap.set("n", "<Leader>j", ":cn<cr>")
vim.keymap.set("n", "<Leader>k", ":cp<cr>")
vim.keymap.set("n", "<C-j>", ":lne<cr>")
vim.keymap.set("n", "<C-k>", ":lp<cr>")

-- Highlight the current line the cursor is on.
vim.opt.cursorline = true

-- fold
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false

-- Plugins
require("config")
