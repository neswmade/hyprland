local vars = require("variables")
local fn = require("config.functions")

hl.on("hyprland.start", function()
    -- keyring + auth
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    -- clipboard
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- trash
    hl.exec_cmd("trash-empty 30")

    -- cursor
    hl.exec_cmd("hyprctl setcursor " .. vars.cursorTheme .. " " .. vars.cursorSize)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme " .. vars.cursorTheme)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size " .. vars.cursorSize)

    -- location + nightlight
    hl.exec_cmd("/usr/lib/geoclue-2.0/demos/agent")
    hl.exec_cmd("sleep 1 && gammastep")

    --bluetooth
    hl.exec_cmd("mpris-proxy")
end)

hl.on("window.title", function()
    local pip = fn.move_actions() or {}
    fn.resizer("Picture[- ]in[- ][Pp]icture", 0, 0, pip, false)
end)

hl.on("window.open", function()
    local pip = fn.move_actions() or {}
    fn.resizer("Picture[- ]in[- ][Pp]icture", 0, 0, pip, false)
end)
