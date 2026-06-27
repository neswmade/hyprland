local vars = require("variables")

-- cursor
hl.env("XCURSOR_SIZE", vars.cursorSize)
hl.env("XCURSOR_THEME", vars.cursorTheme)
hl.env("HYPRCURSOR_SIZE", vars.cursorSize)
hl.env("HYPRCURSOR_THEME", vars.cursorTheme)

-- qt
hl.env("QT_QPA_PLATFORMTHEME", "qtengine")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- drivers
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("SDL_VIDEODRIVER", "wayland,x11,windows")

-- wayland
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- gnome
hl.env("CLUTTER_BACKEND", "wayland")

-- xdg
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- misc
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")
