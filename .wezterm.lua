local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.initial_cols = 120
config.initial_rows = 32

config.window_decorations = "RESIZE"
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#5c6d74"
  local foreground = "#FFFFFF"

  if tab.is_active then
    background = "#ae8b2d"
    foreground = "#FFFFFF"
  end

  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

  return {
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = title },
  }
end)

config.color_scheme = "Ayu Dark (Gogh)"

config.font = wezterm.font_with_fallback({
  { family = "JetBrains Mono", weight = "ExtraBold" },
  { family = "ヒラギノ角ゴシック", weight = "Bold" },
})
config.font_size = 13

local act = wezterm.action
config.keys = {
  {
    key = "d",
    mods = "CMD",
    action = act.CloseCurrentPane({ confirm = true }),
  },
  {
    key = "f",
    mods = "CMD",
    action = act.ToggleFullScreen,
  },
  {
    key = "h",
    mods = "CMD",
    action = act.ActivatePaneDirection("Left"),
  },
  {
    key = "h",
    mods = "CMD|SHIFT",
    action = act.ActivateTabRelative(-1),
  },
  {
    key = "h",
    mods = "CTRL|CMD",
    action = act.SendKey({ key = "LeftArrow" }),
  },
  {
    key = "j",
    mods = "CMD",
    action = act({ ScrollByLine = 1 }),
  },
  {
    key = "j",
    mods = "CMD|SHIFT",
    action = act({ ScrollByPage = 1 }),
  },
  {
    key = "j",
    mods = "CTRL|CMD",
    action = act.SendKey({ key = "DownArrow" }),
  },
  {
    key = "k",
    mods = "CMD",
    action = act({ ScrollByLine = -1 }),
  },
  {
    key = "k",
    mods = "CMD|SHIFT",
    action = act({ ScrollByPage = -1 }),
  },
  {
    key = "k",
    mods = "CTRL|CMD",
    action = act.SendKey({ key = "UpArrow" }),
  },
  {
    key = "l",
    mods = "CMD",
    action = act.ActivatePaneDirection("Right"),
  },
  {
    key = "l",
    mods = "CTRL|CMD",
    action = act.SendKey({ key = "RightArrow" }),
  },
  {
    key = "l",
    mods = "CMD|SHIFT",
    action = act.ActivateTabRelative(1),
  },
  {
    key = "p",
    mods = "CMD",
    action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "t",
    mods = "CMD",
    action = act.SpawnCommandInNewTab({
      cwd = wezterm.home_dir,
    }),
  },
  {
    key = "w",
    mods = "CMD",
    action = act.CloseCurrentTab({ confirm = false }),
  },
  {
    key = "z",
    mods = "CMD",
    action = act.TogglePaneZoomState,
  },
}

return config
