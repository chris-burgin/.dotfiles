local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

config.default_prog = {"/usr/bin/zsh", "-l"}
config.color_scheme = "Gruvbox dark, hard (base16)"
config.enable_tab_bar = false
config.window_padding = {left = 0, right = 0, top = 0, bottom = 0}
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

return config
