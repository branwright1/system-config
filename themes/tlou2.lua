local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gears = require("gears")
local gcolor = require("gears.color")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local naughty = require("naughty")
local theme = {}
-- local theme = dofile(themes_path .. "default/theme.lua") -- inherit default theme
local config_path = os.getenv("HOME") .. "/.config/awesome/"


-- Wallpaper
theme.wallpaper = "~/Wallpapers/wallhaven-5weoz7.png"

-- Global font
theme.font = "Dina Bold 10"
theme.font_notifs = "Dina 10"

-- Wibar Settigs
theme.wibar_height = dpi(27)
theme.wibar_margin = dpi(0)

-- Wibox Background
theme.bg_normal     = "#201e1a"
theme.bg_focus      = "#272520"
theme.bg_urgent     = "#79695a"
theme.bg_minimize   = "#201e1a"

-- Wibox Foreground
theme.fg_normal     = "#696055"
theme.fg_focus      = "#5d6051"
theme.fg_urgent     = "#201e1a"
theme.fg_minimize   = "#443a36"

-- Titlebars
theme.titlebar_bg_focus  = "#272520"
theme.titlebar_bg_normal = "#272520"
theme.titlebar_fg_focus  = "#79695a"
theme.titlebar_fg_normal = "#79695a"

-- Windows
theme.border_width  = dpi(3)
theme.border_radius = dpi(8)
theme.border_focus = "#3E2D23"
theme.border_normal  = "#3c2b22"
theme.border_marked = "#3c2b22"
theme.snap_border_width = dpi(3)
theme.snap_border_color = "#3c2b22"

-- hotkeys
theme.hotkeys_font = theme.font
theme.hotkeys_description_font = theme.font
theme.hotkeys_border_width = dpi(3)
theme.hotkeys_border_color = "#3E2D23"
theme.hotkeys_group_margin = dpi(5)

-- mouse menu
theme.menu_height       = dpi(28)
theme.menu_width        = dpi(120)
theme.menu_font         = "Dina 9"
theme.menu_border_width = dpi(2)
theme.menu_border_color = "#443a36"

-- menubar
theme.menuba_fg_normal = theme.fg_normal
theme.menubar_bg_normal = theme.bg_normal
theme.menubar_border_width = dpi(0)
theme.menubar_border_color = "#3E2D23"
theme.menubar_fg_focus = theme.fg_focus
theme.menubar_bg_focus = theme.bg_focus

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_normal, theme.fg_normal
)

-- Naughty settings
theme.notification_fg = theme.fg_normal
theme.notification_font = theme.font_notifs
theme.notification_icon_size = dpi(45)
theme.notification_border_color = theme.border_focus

-- Bling tabbar settings
theme.tabbed_spawn_in_tab = true
theme.tabbar_style = "modern"
theme.tabbar_size = dpi(42)
theme.tabbar_ontop  = true
theme.tabbar_position = "top"
theme.tabbar_color_close = "#674441"
theme.tabbar_color_min = "#84694e"
theme.tabbar_color_float = "#545e5e"
theme.tabbar_bg_normal = "#272520"
theme.tabbar_fg_normal = theme.fg_normal
theme.tabbar_bg_focus  = theme.bg_normal
theme.tabbar_fg_focus  = theme.fg_focus

-- Bling mstab settings
theme.mstab_bar_height = dpi(35) 
theme.mstab_font = theme.font
theme.mstab_bar_padding = dpi(24)
theme.mstab_tabbar_position = "right"
theme.mstab_tabbar_style = "boxes"
theme.mstab_tabbar_ontop = true
theme.mstab_bg_focus = theme.bg_focus
theme.mstab_fg_focus = theme.fg_focus
theme.mstab_bg_normal = theme.bg_normal
theme.mstab_fg_normal = theme.fg_normal

-- Collision
theme.collision_focus_fg = theme.fg_normal
theme.collision_focus_border_width = theme.border_width
theme.collision_focus_border_color = theme.border_normal
theme.collision_focus_bg_center = theme.fg_focus

return theme
