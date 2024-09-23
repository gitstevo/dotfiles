-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- The color scheme:
config.color_scheme = "GitHub Dark"

config.colors = {
	-- foreground = "#282c34",
	background = "#282c34",
	-- cursor and the cursor style is set to Block
	-- cursor_bg = "#52ad70",
	-- Overrides the text color when the current cell is occupied by the cursor
	-- cursor_fg = "black",
}

-- The Font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0

-- The Tab Bar
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.enable_tab_bar = false
config.tab_bar_at_bottom = true

-- The Window
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.initial_cols = 200
config.initial_rows = 55

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.window_frame = {
	inactive_titlebar_bg = "#000000",
	active_titlebar_bg = "#000000",
	inactive_titlebar_fg = "#000000",
	active_titlebar_fg = "#000000",
	inactive_titlebar_border_bottom = "#000000",
	active_titlebar_border_bottom = "#000000",
}

config.adjust_window_size_when_changing_font_size = false

-- Workspaces
local act = wezterm.action

wezterm.on("update-right-status", function(window, pane)
	window:set_right_status(window:active_workspace())
end)

config.keys = {
	-- Switch to the default workspace
	{
		key = "y",
		mods = "CTRL|SHIFT",
		action = act.SwitchToWorkspace({
			name = "home",
		}),
	},
	-- Switch to a monitoring workspace, which will have `top` launched into it
	{
		key = "u",
		mods = "CTRL|SHIFT",
		action = act.SwitchToWorkspace({
			name = "second",
		}),
	},
	-- Create a new workspace with a random name and switch to it
	-- { key = "i", mods = "CTRL|SHIFT", action = act.SwitchToWorkspace },

	--Fuzzy find workspaces
	{
		key = "9",
		mods = "ALT",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
	{
		key = "8",
		mods = "ALT",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|TABS",
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
