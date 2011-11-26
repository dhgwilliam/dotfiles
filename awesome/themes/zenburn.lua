---------------------------
-- awesome zenburn theme --
-- anrxc_at_sysphere_org --
---------------------------

-- From awesome 3.3 themes are written in Lua, if you need a theme for older 
-- awesome versions check the previous versions of this page, in the history.
theme   = {}
confdir = awful.util.getdir("config")


-- Font styles for statusbars and titlebars
theme.font          = "Profont 8"
theme.fg_normal     = "#DCDCCC"
theme.fg_focus      = "#F0DFAF"
-- theme.fg_urgent     = "#CC9393"
theme.fg_urgent     = "#000000"
theme.bg_focus	    = "#3F3F3F"
theme.bg_normal	    = "#1E2320"
theme.bg_urgent     = "#DCDCCC"

-- Windows border styles
theme.border_width  = "1"
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#1E2320"
theme.border_marked = "#CC9393"


-- Titlebar styles
theme.titlebar_bg_focus  = "#3F3F3F"
-- theme.titlebar_bg_normal = "#3F3F3F"
theme.titlebar_bg_normal = "#1E2320"

-- Widget styles
theme.fg_widget        = "#AECF96"
theme.fg_center_widget = "#88A175"
theme.fg_end_widget    = "#FF5656"
theme.fg_off_widget    = "#494B4F"
theme.fg_netup_widget  = "#7F9F7F"
theme.fg_netdn_widget  = "#CC9393"
theme.bg_widget        = "#3F3F3F"
theme.border_widget    = "#3F3F3F"

-- Command used to set the wallpaper
theme.wallpaper_cmd = { "/usr/bin/nitrogen --restore" }


-- Taglist squares (4x14 pixels, zenburn colors)
theme.taglist_squares       = "true"
theme.taglist_squares_sel   = confdir .. "/icons/taglist/squarefz.png"
theme.taglist_squares_unsel = confdir .. "/icons/taglist/squareza.png"

-- Statusbar icons for window management layouts (14x14 pixels, zenburn colors)
theme.layout_tile       = confdir .. "/icons/layouts/tile.png"
theme.layout_tileleft   = confdir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom = confdir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop    = confdir .. "/icons/layouts/tiletop.png"
theme.layout_fairv      = confdir .. "/icons/layouts/fairv.png"
theme.layout_fairh      = confdir .. "/icons/layouts/fairh.png"
theme.layout_max        = confdir .. "/icons/layouts/max.png"
theme.layout_fullscreen = confdir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier  = confdir .. "/icons/layouts/magnifier.png"
theme.layout_floating   = confdir .. "/icons/layouts/floating.png"

-- tasklist icons
theme.tasklist_floating_icon = confdir .. "/icons/layouts/floating.png"

-- Widget icons (from dzen, zenburn colors)
theme.widget_cpu    = confdir .. "/icons/cpu.png"
theme.widget_bat    = confdir .. "/icons/bat.png"
theme.widget_mem    = confdir .. "/icons/mem.png"
theme.widget_fs     = confdir .. "/icons/disk.png"
theme.widget_net    = confdir .. "/icons/down.png"
theme.widget_netup  = confdir .. "/icons/up.png"
theme.widget_mail   = confdir .. "/icons/mail.png"
theme.widget_vol    = confdir .. "/icons/vol.png"
theme.widget_org    = confdir .. "/icons/cal.png"
theme.widget_date   = confdir .. "/icons/time.png"
theme.widget_crypto = confdir .. "/icons/crypto.png"

-- Titlebar icons (17x17 pixels, zenburn colors)
--
-- Close
theme.titlebar_close_button_focus  = confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = confdir .. "/icons/titlebar/close_normal.png"
-- On top
theme.titlebar_ontop_button_focus_active    = confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active   = confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = confdir .. "/icons/titlebar/ontop_normal_inactive.png"
-- Sticky
theme.titlebar_sticky_button_focus_active    = confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = confdir .. "/icons/titlebar/sticky_normal_inactive.png"
-- Floating
theme.titlebar_floating_button_focus_active    = confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active   = confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = confdir .. "/icons/titlebar/floating_normal_inactive.png"
-- Maximized
theme.titlebar_maximized_button_focus_active    = confdir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = confdir .. "/icons/titlebar/maximized_normal_inactive.png"


return theme

