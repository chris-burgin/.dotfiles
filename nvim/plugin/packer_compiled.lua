-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/chrisburgin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/chrisburgin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/chrisburgin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/chrisburgin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/chrisburgin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  [".fzf"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/.fzf",
    url = "/home/chrisburgin/.fzf"
  },
  ["background.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20background_nvim\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/background.nvim",
    url = "https://github.com/chris-burgin/background.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\n\\\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\16:GFiles<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n§\2\0\0\6\0\14\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\f\0'\4\r\0004\5\0\0B\0\5\1K\0\1\0\24<cmd>HopPattern<cr>\15<Leader>hp\21<cmd>HopWord<cr>\15<Leader>hw\22<cmd>HopChar1<cr>\15<Leader>hc\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n¬\5\0\0\b\0%\0E6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\6\1'\2\a\0=\2\4\0019\1\b\0009\1\3\1'\2\5\0=\2\4\0019\1\b\0009\1\6\1'\2\5\0=\2\4\0019\1\b\0009\1\t\1'\2\5\0=\2\4\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\14\0005\4\f\0=\0\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0044\5\3\0005\6\19\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\0045\5\28\0005\6\25\0005\a\26\0=\a\27\6>\6\1\5=\5\29\4=\4\30\0035\4 \0005\5\31\0=\5\18\0044\5\3\0005\6!\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\"\0=\5\24\0045\5#\0=\5\29\4=\4$\3B\1\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\vbranch\1\2\1\0\rfilename\tpath\3\1\1\0\0\1\2\0\0\tmode\rsections\14lualine_z\1\3\0\0\0\rlocation\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\14lualine_y\1\2\0\0\vbranch\14lualine_x\14lualine_c\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\2\23section_separators\5\25component_separators\5\nsetup\flualine\6c\rinactive\f#0087af\6b\f#e4e4e4\abg\6a\vnormal$lualine.themes.papercolor_light\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n;\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\20formatting_sync\bbuf\blsp\bvimô\1\1\2\a\0\14\0\0259\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\19€6\2\2\0009\2\3\0029\2\4\0025\4\5\0006\5\6\0=\5\a\4=\1\b\4B\2\2\0016\2\2\0009\2\3\0029\2\t\2'\4\n\0005\5\v\0006\6\6\0=\6\a\5=\1\b\0053\6\f\0=\6\r\5B\2\3\1K\0\1\0\rcallback\0\1\0\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\faugroup\1\0\0\24nvim_clear_autocmds\bapi\bvim\28textDocument/formatting\20supports_methodÆ\3\1\0\a\0\18\0J6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0004\3\n\0006\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\5\4>\4\1\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\6\4>\4\2\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\a\0049\4\6\4>\4\3\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\b\4>\4\4\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\a\0049\4\t\4>\4\5\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\n\0049\4\t\4>\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\t\4>\4\a\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\v\0049\4\f\4>\4\b\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\n\0049\4\r\4>\4\t\3=\3\15\0023\3\16\0=\3\17\2B\0\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\rgitsigns\nspell\15completion\17code_actions\reslint_d\14prettierd\16diagnostics\14stylelint\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\5\1\0\v\0(\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0015\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\r\0009\a\n\0019\a\v\a5\t\f\0B\a\2\2=\a\14\0069\a\n\0019\a\15\a5\t\18\0009\n\16\0029\n\17\n=\n\19\tB\a\2\2=\a\20\0069\a\n\0019\a\21\a5\t\22\0009\n\16\0029\n\17\n=\n\19\tB\a\2\2=\a\23\6=\6\n\0054\6\3\0005\a\24\0>\a\1\0065\a\25\0>\a\2\6=\6\26\0055\6\31\0009\a\27\0005\t\28\0005\n\29\0=\n\30\tB\a\2\2=\a \6=\6!\5B\3\2\0016\3\"\0009\3#\0039\3$\0039\3%\3B\3\1\0026\4\0\0'\6&\0B\4\2\0029\4'\4\18\6\3\0B\4\2\2\18\3\4\0K\0\1\0\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\15formatting\vformat\1\0\0\tmenu\1\0\5\rnvim_lua\n[Lua]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\fluasnip\14[LuaSnip]\18latex_symbols\f[Latex]\1\0\1\14with_text\2\15cmp_format\fsources\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\n<C-p>\1\0\0\21select_prev_item\n<C-n>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\18cmp.types.cmp\bcmp\flspkind\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nŸ\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\17lsp/mappings\14lsp/icons\15lsp/svelte\19lsp/typescript\flsp/css\15lsp/golang\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‘\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\vindent\1\0\1\venable\2\fkeymaps\1\0\3\21node_incremental\bgsi\21node_decremental\bgsd\19init_selection\bgss\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme PaperColor\bcmd\bvim\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/chris-burgin/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["query.nvim"] = {
    config = { "\27LJ\2\n¼\1\0\0\t\0\n\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\1\0B\2\2\0029\2\3\0025\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\4B\2\2\1K\0\1\0\adb\1\0\0\ab5\1\0\0\1\0\3\thost\014127.0.0.1\tuser\troot\rdatabase\ab5\nmysql\nsetup\26query_nvim/connectors\15query_nvim\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/query.nvim",
    url = "https://github.com/chris-burgin/query.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n·\3\0\0\6\0\16\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2P<cmd>lua require(\"trouble\").previous({skip_groups = true, jump = true})<CR>\15<leader>tp\1\0\2\fnoremap\2\vsilent\2L<cmd>lua require(\"trouble\").next({skip_groups = true, jump = true})<CR>\15<leader>tn\1\0\2\fnoremap\2\vsilent\2\23:TroubleToggle<CR>\15<leader>tt\6n\20nvim_set_keymap\bapi\bvim\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\nÿ\3\0\0\6\0\16\0$6\0\0\0009\0\1\0)\1È\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\6\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0B\0\2\0016\0\0\0009\0\3\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\3\0009\0\b\0'\2\t\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2L<cmd>lua require\"illuminate\".next_reference{reverse=true,wrap=true}<cr>\14<leader>p\1\0\1\fnoremap\2?<cmd>lua require\"illuminate\".next_reference{wrap=true}<cr>\14<leader>n\6n\20nvim_set_keymap. hi def link LspReferenceRead CursorLine / hi def link LspReferenceWrite CursorLine . hi def link LspReferenceText CursorLine \17nvim_command\bapi\21Illuminate_delay\6g\bvim\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-sensible",
    url = "https://github.com/tpope/vim-sensible"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nŸ\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\17lsp/mappings\14lsp/icons\15lsp/svelte\19lsp/typescript\flsp/css\15lsp/golang\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\n\\\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\16:GFiles<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n¬\5\0\0\b\0%\0E6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\6\1'\2\a\0=\2\4\0019\1\b\0009\1\3\1'\2\5\0=\2\4\0019\1\b\0009\1\6\1'\2\5\0=\2\4\0019\1\b\0009\1\t\1'\2\5\0=\2\4\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\14\0005\4\f\0=\0\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0044\5\3\0005\6\19\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\0045\5\28\0005\6\25\0005\a\26\0=\a\27\6>\6\1\5=\5\29\4=\4\30\0035\4 \0005\5\31\0=\5\18\0044\5\3\0005\6!\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\"\0=\5\24\0045\5#\0=\5\29\4=\4$\3B\1\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\vbranch\1\2\1\0\rfilename\tpath\3\1\1\0\0\1\2\0\0\tmode\rsections\14lualine_z\1\3\0\0\0\rlocation\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\14lualine_y\1\2\0\0\vbranch\14lualine_x\14lualine_c\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\2\23section_separators\5\25component_separators\5\nsetup\flualine\6c\rinactive\f#0087af\6b\f#e4e4e4\abg\6a\vnormal$lualine.themes.papercolor_light\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: background.nvim
time([[Config for background.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20background_nvim\frequire\0", "config", "background.nvim")
time([[Config for background.nvim]], false)
-- Config for: query.nvim
time([[Config for query.nvim]], true)
try_loadstring("\27LJ\2\n¼\1\0\0\t\0\n\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\1\0B\2\2\0029\2\3\0025\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\4B\2\2\1K\0\1\0\adb\1\0\0\ab5\1\0\0\1\0\3\thost\014127.0.0.1\tuser\troot\rdatabase\ab5\nmysql\nsetup\26query_nvim/connectors\15query_nvim\frequire\0", "config", "query.nvim")
time([[Config for query.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n·\3\0\0\6\0\16\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2P<cmd>lua require(\"trouble\").previous({skip_groups = true, jump = true})<CR>\15<leader>tp\1\0\2\fnoremap\2\vsilent\2L<cmd>lua require(\"trouble\").next({skip_groups = true, jump = true})<CR>\15<leader>tn\1\0\2\fnoremap\2\vsilent\2\23:TroubleToggle<CR>\15<leader>tt\6n\20nvim_set_keymap\bapi\bvim\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\20formatting_sync\bbuf\blsp\bvimô\1\1\2\a\0\14\0\0259\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\19€6\2\2\0009\2\3\0029\2\4\0025\4\5\0006\5\6\0=\5\a\4=\1\b\4B\2\2\0016\2\2\0009\2\3\0029\2\t\2'\4\n\0005\5\v\0006\6\6\0=\6\a\5=\1\b\0053\6\f\0=\6\r\5B\2\3\1K\0\1\0\rcallback\0\1\0\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\faugroup\1\0\0\24nvim_clear_autocmds\bapi\bvim\28textDocument/formatting\20supports_methodÆ\3\1\0\a\0\18\0J6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0004\3\n\0006\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\5\4>\4\1\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\6\4>\4\2\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\a\0049\4\6\4>\4\3\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\b\4>\4\4\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\a\0049\4\t\4>\4\5\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\n\0049\4\t\4>\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\4\0049\4\t\4>\4\a\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\v\0049\4\f\4>\4\b\0036\4\0\0'\6\1\0B\4\2\0029\4\3\0049\4\n\0049\4\r\4>\4\t\3=\3\15\0023\3\16\0=\3\17\2B\0\2\1K\0\1\0\14on_attach\0\fsources\1\0\0\rgitsigns\nspell\15completion\17code_actions\reslint_d\14prettierd\16diagnostics\14stylelint\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n§\2\0\0\6\0\14\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\f\0'\4\r\0004\5\0\0B\0\5\1K\0\1\0\24<cmd>HopPattern<cr>\15<Leader>hp\21<cmd>HopWord<cr>\15<Leader>hw\22<cmd>HopChar1<cr>\15<Leader>hc\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‘\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\vindent\1\0\1\venable\2\fkeymaps\1\0\3\21node_incremental\bgsi\21node_decremental\bgsd\19init_selection\bgss\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\5\1\0\v\0(\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0015\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\r\0009\a\n\0019\a\v\a5\t\f\0B\a\2\2=\a\14\0069\a\n\0019\a\15\a5\t\18\0009\n\16\0029\n\17\n=\n\19\tB\a\2\2=\a\20\0069\a\n\0019\a\21\a5\t\22\0009\n\16\0029\n\17\n=\n\19\tB\a\2\2=\a\23\6=\6\n\0054\6\3\0005\a\24\0>\a\1\0065\a\25\0>\a\2\6=\6\26\0055\6\31\0009\a\27\0005\t\28\0005\n\29\0=\n\30\tB\a\2\2=\a \6=\6!\5B\3\2\0016\3\"\0009\3#\0039\3$\0039\3%\3B\3\1\0026\4\0\0'\6&\0B\4\2\0029\4'\4\18\6\3\0B\4\2\2\18\3\4\0K\0\1\0\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\15formatting\vformat\1\0\0\tmenu\1\0\5\rnvim_lua\n[Lua]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\fluasnip\14[LuaSnip]\18latex_symbols\f[Latex]\1\0\1\14with_text\2\15cmp_format\fsources\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\n<C-p>\1\0\0\21select_prev_item\n<C-n>\rbehavior\1\0\0\vInsert\19SelectBehavior\21select_next_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\18cmp.types.cmp\bcmp\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: papercolor-theme
time([[Config for papercolor-theme]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme PaperColor\bcmd\bvim\0", "config", "papercolor-theme")
time([[Config for papercolor-theme]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\nÿ\3\0\0\6\0\16\0$6\0\0\0009\0\1\0)\1È\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\6\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0B\0\2\0016\0\0\0009\0\3\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\3\0009\0\b\0'\2\t\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2L<cmd>lua require\"illuminate\".next_reference{reverse=true,wrap=true}<cr>\14<leader>p\1\0\1\fnoremap\2?<cmd>lua require\"illuminate\".next_reference{wrap=true}<cr>\14<leader>n\6n\20nvim_set_keymap. hi def link LspReferenceRead CursorLine / hi def link LspReferenceWrite CursorLine . hi def link LspReferenceText CursorLine \17nvim_command\bapi\21Illuminate_delay\6g\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
