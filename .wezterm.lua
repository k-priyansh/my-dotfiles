-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- my coolnight colorscheme
-- HackTheBox
--config.colors = {
-- 	foreground = "#E2E8EF",
-- 	background = "#1a2332",
--	cursor_bg = "#5CB2FF",
-- 	cursor_border = "#5CB2FF",
-- 	cursor_fg = "#5CB2FF",
-- 	selection_bg = "#222325",
-- 	selection_fg = "#ffffff",
-- 	ansi = { "#000000", "#ff3e3e", "#9fef00", "#ffaf00", "#004cff", "#9f00ff", "#2ee7b6", "#ffffff" },
-- 	brights = { "#666666", "#ff8484", "#c5f467", "#ffcc5c", "#5cb2ff", "#c16cfa", "#5cecc6", "#ffffff" },
--}

-- Iceberg
config.colors = {
    foreground = "#C6C8D1",
    background = "#161821",
    cursor_bg = "#91ACD1",
    cursor_border = "#91ACD1",
    cursor_fg = "#91ACD1",
    selection_bg = "#1E2132",
    selection_fg = "#C6C8D1",
    ansi = { "#1E2132", "#E27878", "#B4BE82", "#E2A478", "#84A0C6", "#A093C7", "#89B8C2", "#E6E6E6" },
    brights = { "#6B7089", "#E98989", "#C0CA8E", "#E9B189", "#91ACD1", "#ADA0D3", "#95C4CE", "#D2D4DE" },
}

config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono")
-- config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 12

config.default_cursor_style = 'SteadyUnderline'

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

-- keybindings








-- and finally, return the configuration to wezterm
return config
