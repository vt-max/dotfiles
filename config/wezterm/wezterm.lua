local wezterm = require 'wezterm'
local mux = wezterm.mux

local config = {}

local colors, _ = wezterm.color.load_base16_scheme("C:/Users/max.vanderkolk/AppData/Local/wezterm/minicyan.yaml")

config.color_schemes = {
    ["minicyan"] = colors
}
config.color_scheme = 'minicyan'

config.default_domain = 'WSL:Ubuntu'

config.font = wezterm.font {
    family = 'JetBrains Mono',
    -- Disable ligatures, e.g. joining of `!=`.
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.font_size = 12

wezterm.on("gui-startup", function()
    local _, _, window = mux.spawn_window {}
    window:gui_window():maximize()
end)

return config
