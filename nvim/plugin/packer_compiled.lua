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
  local success, result = pcall(loadstring(s))
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
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/.fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\n\\\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\16:GFiles<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n•\5\0\0\b\0%\0E6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\6\1'\2\a\0=\2\4\0019\1\b\0009\1\3\1'\2\5\0=\2\4\0019\1\b\0009\1\6\1'\2\5\0=\2\4\0019\1\b\0009\1\t\1'\2\5\0=\2\4\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\14\0005\4\f\0=\0\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0044\5\3\0005\6\19\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\0045\5\28\0005\6\25\0005\a\26\0=\a\27\6>\6\1\5=\5\29\4=\4\30\0035\4 \0005\5\31\0=\5\18\0044\5\3\0005\6!\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\"\0=\5\24\0045\5#\0=\5\29\4=\4$\3B\1\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\vbranch\1\2\1\0\rfilename\tpath\3\1\1\0\0\1\2\0\0\tmode\rsections\14lualine_z\1\3\0\0\0\rlocation\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\14lualine_y\1\2\0\0\vbranch\14lualine_x\14lualine_c\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\2\23section_separators\5\25component_separators\5\nsetup\flualine\6c\rinactive\f#0087af\6b\f#e4e4e4\abg\6a\vnormal$lualine.themes.papercolor_light\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nÑ\5\0\0\6\0\22\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\1\t\0=\1\b\0006\0\6\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\6\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\6\0009\0\n\0009\0\v\0'\2\f\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\2\texpr\2\vsilent\2\26compe#confirm('<CR>')\t<CR>\1\0\2\texpr\2\vsilent\2\25compe#close('<C-e>')\n<C-e>\1\0\2\texpr\2\vsilent\2\21compe#complete()\14<C-Space>\6i\20nvim_set_keymap\bapi\26menu,menuone,noselect\16completeopt\6o\bvim\vsource\1\0\t\nvsnip\2\ttags\2\tcalc\2\nspell\2\vbuffer\2\rnvim_lsp\2\tpath\2\18snippets_nvim\2\rnvim_lua\2\1\0\f\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\19max_abbr_width\3d\25allow_prefix_unmatch\1\21incomplete_delay\3ê\3\19max_kind_width\3d\19max_menu_width\3d\ndebug\1\19source_timeout\3»\1\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n§\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\17lsp/mappings\14lsp/icons\20lsp/diagnostics\19lsp/typescript\flsp/css\15lsp/golang\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nò\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\vindent\1\0\1\venable\2\fkeymaps\1\0\3\21node_decremental\bgsd\19init_selection\bgss\21node_incremental\bgsi\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["papercolor-theme"] = {
    config = { "\27LJ\2\n_\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\27colorscheme PaperColor\bcmd\nlight\15background\bopt\bvim\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["query.nvim"] = {
    config = { "\27LJ\2\nº\1\0\0\t\0\n\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\1\0B\2\2\0029\2\3\0025\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\4B\2\2\1K\0\1\0\adb\1\0\0\ab5\1\0\0\1\0\3\thost\014127.0.0.1\tuser\troot\rdatabase\ab5\nmysql\nsetup\26query_nvim/connectors\15query_nvim\frequire\0" },
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/query.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-sensible"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/chrisburgin/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: query.nvim
time([[Config for query.nvim]], true)
try_loadstring("\27LJ\2\nº\1\0\0\t\0\n\0\0196\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\1\0B\2\2\0029\2\3\0025\4\b\0005\5\6\0009\6\4\0015\b\5\0B\6\2\2=\6\a\5=\5\t\4B\2\2\1K\0\1\0\adb\1\0\0\ab5\1\0\0\1\0\3\thost\014127.0.0.1\tuser\troot\rdatabase\ab5\nmysql\nsetup\26query_nvim/connectors\15query_nvim\frequire\0", "config", "query.nvim")
time([[Config for query.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nÑ\5\0\0\6\0\22\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\1\t\0=\1\b\0006\0\6\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\6\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\6\0009\0\n\0009\0\v\0'\2\f\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\2\texpr\2\vsilent\2\26compe#confirm('<CR>')\t<CR>\1\0\2\texpr\2\vsilent\2\25compe#close('<C-e>')\n<C-e>\1\0\2\texpr\2\vsilent\2\21compe#complete()\14<C-Space>\6i\20nvim_set_keymap\bapi\26menu,menuone,noselect\16completeopt\6o\bvim\vsource\1\0\t\nvsnip\2\ttags\2\tcalc\2\nspell\2\vbuffer\2\rnvim_lsp\2\tpath\2\18snippets_nvim\2\rnvim_lua\2\1\0\f\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\fenabled\2\19max_abbr_width\3d\25allow_prefix_unmatch\1\21incomplete_delay\3ê\3\19max_kind_width\3d\19max_menu_width\3d\ndebug\1\19source_timeout\3»\1\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: papercolor-theme
time([[Config for papercolor-theme]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\27colorscheme PaperColor\bcmd\nlight\15background\bopt\bvim\0", "config", "papercolor-theme")
time([[Config for papercolor-theme]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n§\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\17lsp/mappings\14lsp/icons\20lsp/diagnostics\19lsp/typescript\flsp/css\15lsp/golang\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\n\\\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\16:GFiles<cr>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n•\5\0\0\b\0%\0E6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\6\1'\2\a\0=\2\4\0019\1\b\0009\1\3\1'\2\5\0=\2\4\0019\1\b\0009\1\6\1'\2\5\0=\2\4\0019\1\b\0009\1\t\1'\2\5\0=\2\4\0016\1\0\0'\3\n\0B\1\2\0029\1\v\0015\3\14\0005\4\f\0=\0\r\4=\4\15\0035\4\17\0005\5\16\0=\5\18\0044\5\3\0005\6\19\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\0045\5\28\0005\6\25\0005\a\26\0=\a\27\6>\6\1\5=\5\29\4=\4\30\0035\4 \0005\5\31\0=\5\18\0044\5\3\0005\6!\0>\6\1\5=\5\20\0044\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\"\0=\5\24\0045\5#\0=\5\29\4=\4$\3B\1\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\vbranch\1\2\1\0\rfilename\tpath\3\1\1\0\0\1\2\0\0\tmode\rsections\14lualine_z\1\3\0\0\0\rlocation\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\14lualine_y\1\2\0\0\vbranch\14lualine_x\14lualine_c\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\ntheme\1\0\2\23section_separators\5\25component_separators\5\nsetup\flualine\6c\rinactive\f#0087af\6b\f#e4e4e4\abg\6a\vnormal$lualine.themes.papercolor_light\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nò\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\vindent\1\0\1\venable\2\fkeymaps\1\0\3\21node_decremental\bgsd\19init_selection\bgss\21node_incremental\bgsi\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
