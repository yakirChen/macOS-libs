local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = {
    -- active_titlebar_bg = "#0F2536",
    -- inactive_titlebar_bg = "#0F2536",
    -- font = fonts.font,
    -- font_size = fonts.font_size,
}
config.integrated_title_button_alignment = "Right"
config.inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 }
config.use_fancy_tab_bar = true
config.initial_rows = 86
config.initial_cols = 150

config.default_cursor_style = 'SteadyUnderline'


config.line_height = 0.9
-- config.front_end = 'WebGpu'
config.font_size = 11.0
config.font = wezterm.font{
    family = 'Hack',
    -- harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.freetype_load_flags = 'NO_HINTING|MONOCHROME'
config.freetype_load_target = "Light"
config.freetype_render_target = 'HorizontalLcd'

-- config.color_scheme = 'Gruvbox dark, hard (base16)'
-- config.color_scheme = 'Gruvbox dark, pale (base16)'
-- config.color_scheme = 'GruvboxDark'
config.color_scheme = 'GruvboxDarkHard'


config.tab_max_width = 25
config.switch_to_last_active_tab_when_closing_tab = true
config.bold_brightens_ansi_colors = true


config.scrollback_lines = 99999999999

local act = wezterm.action
config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = act.CloseCurrentPane { confirm = false },
  },
 {
   key = 'l',
   mods = 'CMD|OPT',
   action = act.ClearScrollback 'ScrollbackOnly',
 },
 {
   key = 'l',
   mods = 'CMD|OPT',
   action = act.ClearScrollback 'ScrollbackAndViewport',
 },
}


return config
