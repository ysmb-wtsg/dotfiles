local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Ayu Dark (Gogh)"

config.font_size = 15

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
		action = act.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "z",
		mods = "CMD",
		action = act.TogglePaneZoomState,
	},
}

return config
