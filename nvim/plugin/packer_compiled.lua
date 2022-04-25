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
    config = { "\27LJ\2\n¬\5\0\0\b\0%\0E6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\6\1'\2\a\0=\2\4\0019\1\b\0009\1\3\1'\2\5\0=\2\4\0019\1\b\0009\1\6\1'\2\5\0=\2\4\0019\1\b\0009\1\t\1'\2\5\0=\2\4\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\14\0005\4\f\0=\0\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0044\5\3\0005\6\19\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\0045\5\28\0005\6\25\0005\a\26\0=\a\27\6>\6\1\5=\5\29\4=\4\30\0035\4 \0005\5\31\0=\5\18\0044\5\3\0005\6!\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\"\0=\5\24\0045\5#\0=\5\29\4=\4$\3B\1\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\vbranch\1\2\1\0\rfilename\tpath\3\1\1\0\0\1\2\0\0\tmode\rsections\14lualine_z\1\3\0\0\0\rlocation\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\14lualine_y\1\2\0\0\vbranch\14lualine_x\14lualine_c\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\2\25component_separators\5\23section_separators\5\nsetup\flualine\6c\rinactive\f#0087af\6b\f#e4e4e4\abg\6a\vnormal$lualine.themes.papercolor_light\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim•\4\1\0\n\0\30\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\f\0009\6\t\0019\6\n\0065\b\v\0B\6\2\2=\6\r\5=\5\t\0044\5\3\0005\6\14\0>\6\1\0055\6\15\0>\6\2\5=\5\16\0045\5\21\0009\6\17\0005\b\18\0005\t\19\0=\t\20\bB\6\2\2=\6\22\5=\5\23\4B\2\2\0016\2\24\0009\2\25\0029\2\26\0029\2\27\2B\2\1\0026\3\0\0'\5\28\0B\3\2\0029\3\29\3\18\5\2\0B\3\2\2\18\2\3\0K\0\1\0\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\15formatting\vformat\1\0\0\tmenu\1\0\5\rnvim_lua\n[Lua]\18latex_symbols\f[Latex]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\fluasnip\14[LuaSnip]\1\0\1\14with_text\2\15cmp_format\fsources\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n¤\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\17lsp/mappings\14lsp/icons\20lsp/diagnostics\19lsp/typescript\flsp/css\15lsp/golang\frequire\0" },
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
    config = { "\27LJ\2\n¼\1\0\0\t\0\n\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\1\0B\2\2\0029\2\3\0025\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\4B\2\2\1K\0\1\0\adb\1\0\0\ab5\1\0\0\1\0\3\tuser\troot\rdatabase\ab5\thost\014127.0.0.1\nmysql\nsetup\26query_nvim/connectors\15query_nvim\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/query.nvim",
    url = "https://github.com/chris-burgin/query.nvim"
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
-- Config for: papercolor-theme
time([[Config for papercolor-theme]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27colorscheme PaperColor\bcmd\bvim\0", "config", "papercolor-theme")
time([[Config for papercolor-theme]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim•\4\1\0\n\0\30\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\f\0009\6\t\0019\6\n\0065\b\v\0B\6\2\2=\6\r\5=\5\t\0044\5\3\0005\6\14\0>\6\1\0055\6\15\0>\6\2\5=\5\16\0045\5\21\0009\6\17\0005\b\18\0005\t\19\0=\t\20\bB\6\2\2=\6\22\5=\5\23\4B\2\2\0016\2\24\0009\2\25\0029\2\26\0029\2\27\2B\2\1\0026\3\0\0'\5\28\0B\3\2\0029\3\29\3\18\5\2\0B\3\2\2\18\2\3\0K\0\1\0\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\bvim\15formatting\vformat\1\0\0\tmenu\1\0\5\rnvim_lua\n[Lua]\18latex_symbols\f[Latex]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\fluasnip\14[LuaSnip]\1\0\1\14with_text\2\15cmp_format\fsources\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: background.nvim
time([[Config for background.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20background_nvim\frequire\0", "config", "background.nvim")
time([[Config for background.nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\nÿ\3\0\0\6\0\16\0$6\0\0\0009\0\1\0)\1È\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\6\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0B\0\2\0016\0\0\0009\0\3\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\3\0009\0\b\0'\2\t\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2L<cmd>lua require\"illuminate\".next_reference{reverse=true,wrap=true}<cr>\14<leader>p\1\0\1\fnoremap\2?<cmd>lua require\"illuminate\".next_reference{wrap=true}<cr>\14<leader>n\6n\20nvim_set_keymap. hi def link LspReferenceRead CursorLine / hi def link LspReferenceWrite CursorLine . hi def link LspReferenceText CursorLine \17nvim_command\bapi\21Illuminate_delay\6g\bvim\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n¤\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\17lsp/mappings\14lsp/icons\20lsp/diagnostics\19lsp/typescript\flsp/css\15lsp/golang\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: query.nvim
time([[Config for query.nvim]], true)
try_loadstring("\27LJ\2\n¼\1\0\0\t\0\n\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\1\0B\2\2\0029\2\3\0025\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\4B\2\2\1K\0\1\0\adb\1\0\0\ab5\1\0\0\1\0\3\tuser\troot\rdatabase\ab5\thost\014127.0.0.1\nmysql\nsetup\26query_nvim/connectors\15query_nvim\frequire\0", "config", "query.nvim")
time([[Config for query.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‘\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\vindent\1\0\1\venable\2\fkeymaps\1\0\3\21node_incremental\bgsi\21node_decremental\bgsd\19init_selection\bgss\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\n\\\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\16:GFiles<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n¬\5\0\0\b\0%\0E6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\6\1'\2\a\0=\2\4\0019\1\b\0009\1\3\1'\2\5\0=\2\4\0019\1\b\0009\1\6\1'\2\5\0=\2\4\0019\1\b\0009\1\t\1'\2\5\0=\2\4\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\14\0005\4\f\0=\0\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0044\5\3\0005\6\19\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\0045\5\28\0005\6\25\0005\a\26\0=\a\27\6>\6\1\5=\5\29\4=\4\30\0035\4 \0005\5\31\0=\5\18\0044\5\3\0005\6!\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\"\0=\5\24\0045\5#\0=\5\29\4=\4$\3B\1\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\vbranch\1\2\1\0\rfilename\tpath\3\1\1\0\0\1\2\0\0\tmode\rsections\14lualine_z\1\3\0\0\0\rlocation\fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\14lualine_y\1\2\0\0\vbranch\14lualine_x\14lualine_c\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\2\25component_separators\5\23section_separators\5\nsetup\flualine\6c\rinactive\f#0087af\6b\f#e4e4e4\abg\6a\vnormal$lualine.themes.papercolor_light\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n§\2\0\0\6\0\14\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\f\0'\4\r\0004\5\0\0B\0\5\1K\0\1\0\24<cmd>HopPattern<cr>\15<Leader>hp\21<cmd>HopWord<cr>\15<Leader>hw\22<cmd>HopChar1<cr>\15<Leader>hc\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
