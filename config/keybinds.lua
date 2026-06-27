local vars = require("variables")
local fn = require("config.functions")

-- workspace
for i = 1, 10 do
    local key = i % 10
    hl.bind(vars.kbGotoWs .. " + " .. key, fn.ws_action(false, "w", i))
    hl.bind(vars.kbMoveWinInWs .. " + " .. key, fn.ws_action(true, "w", i))
    hl.bind(vars.kbGoToWsGroup .. " + " .. key, fn.ws_action(false, "g", i))
    hl.bind(vars.kbMoveWinInWsGroup .. " + " .. key, fn.ws_action(true, "g", i))
end

hl.bind(vars.kbPrevWs, hl.dsp.focus({ workspace = "-1" }), { repeating = true })
hl.bind(vars.kbNextWs, hl.dsp.focus({ workspace = "+1" }), { repeating = true })

hl.bind(vars.kbToggleSpecialWs, hl.dsp.workspace.toggle_special("special"))

-- window
hl.bind("CTRL + SUPER + SHIFT + left", hl.dsp.window.move({ workspace = "-1" }), { repeating = true })
hl.bind("CTRL + SUPER + SHIFT + right", hl.dsp.window.move({ workspace = "+1" }), { repeating = true })

hl.bind("CTRL + SUPER + SHIFT + up", hl.dsp.window.move({ workspace = "special:special" }))
hl.bind("CTRL + SUPER + SHIFT + down", hl.dsp.window.move({ workspace = "e+0" }))
hl.bind("SUPER + ALT + S", hl.dsp.window.move({ workspace = "special:special" }))

hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + ALT + left", hl.dsp.window.resize(fn.resize_active_window(-10, 0)), { repeating = true })
hl.bind("SUPER + ALT + right", hl.dsp.window.resize(fn.resize_active_window(10, 0)), { repeating = true })
hl.bind("SUPER + ALT + up", hl.dsp.window.resize(fn.resize_active_window(0, -10)), { repeating = true })
hl.bind("SUPER + ALT + down", hl.dsp.window.resize(fn.resize_active_window(0, 10)), { repeating = true })

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(vars.kbMoveWin, hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(vars.kbResizeWin, hl.dsp.window.resize(), { mouse = true })
hl.bind("CTRL + SUPER + Backslash", hl.dsp.window.center())
hl.bind("CTRL + SUPER + ALT + Backslash", function()
    local size = fn.resize_by_screen(55, 70)
    if size then
        hl.dispatch(hl.dsp.window.resize(size))
    end
    hl.dispatch(hl.dsp.window.center())
end)
hl.bind(vars.kbWinPip, function()
    local a = hl.get_active_window()
    if a then
        local pip = fn.move_actions() or {}
        table.insert(pip, hl.dsp.window.pin())
        fn.resizer(a.title, 0, 0, pip, true)
    end
end)
hl.bind(vars.kbPinWin, hl.dsp.window.pin())
hl.bind(vars.kbWinFullscreen, hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(vars.kbWinBorderedFullscreen, hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(vars.kbToggleWinFloating, hl.dsp.window.float())
hl.bind(vars.kbCloseWin, hl.dsp.window.close())

hl.bind(vars.kbGroupNext, hl.dsp.group.next(), { repeating = true })
hl.bind(vars.kbGroupPrev, hl.dsp.group.prev(), { repeating = true })
hl.bind(vars.kbToggleGroup, hl.dsp.group.toggle())
hl.bind(vars.kbUngroup, hl.dsp.window.move({ out_of_group = true }))
hl.bind("SUPER + SHIFT + comma", hl.dsp.group.lock_active())
hl.bind("SUPER + SHIFT + ALT + left", hl.dsp.window.move({ into_group = "l" }))
hl.bind("SUPER + SHIFT + ALT + right", hl.dsp.window.move({ into_group = "r" }))

-- apps
hl.bind(vars.kbTerminal, hl.dsp.exec_cmd("app2unit -- " .. vars.terminal))
hl.bind(vars.kbBrowser, hl.dsp.exec_cmd("app2unit -- " .. vars.browser))

-- volume
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ " .. vars.volumeStep .. "%+"
    ),
    { locked = true, repeating = true }
)
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ 0; wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ " .. vars.volumeStep .. "%-"
    ),
    { locked = true, repeating = true }
)

-- misc
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd(vars.suspendCommand), { locked = true })
