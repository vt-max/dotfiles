local wezterm = require 'wezterm'
local mux = wezterm.mux

local config = {}

local minicyan, _ = wezterm.color.load_base16_scheme("C:/Users/max.vanderkolk/AppData/Local/wezterm/minicyan.yaml")

local minicyan_light, _ = wezterm.color.load_base16_scheme(
    "C:/Users/max.vanderkolk/AppData/Local/wezterm/minicyan-light.yaml")

local tokyonight_storm, _ = wezterm.color.load_scheme(
    "C:/Users/max.vanderkolk/AppData/Local/wezterm/tokyonight_storm.toml")

local tokyonight_night, _ = wezterm.color.load_scheme(
    "C:/Users/max.vanderkolk/AppData/Local/wezterm/tokyonight_night.toml")

local tokyonight_day, _ = wezterm.color.load_scheme(
    "C:/Users/max.vanderkolk/AppData/Local/wezterm/tokyonight_day.toml")

config.color_schemes = {
    ["minicyan"] = minicyan,
    ["minicyan-light"] = minicyan_light,
    ["tokyostorm-storm"] = tokyonight_storm,
    ["tokyonight-night"] = tokyonight_night,
    ["tokyonight-day"] = tokyonight_day,
}

-- config.color_scheme = 'minicyan'
-- config.color_scheme = 'minicyan-light'
-- config.color_scheme = 'tokyonight-storm'
config.color_scheme = 'tokyonight-night'
-- config.color_scheme = 'tokyonight-day'

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
