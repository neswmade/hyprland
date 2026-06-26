hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1,
})

local terminal = "ghostty"
local browser = "helium-browser"

hl.env("XCURSOR_SIZE", "20")
hl.env("HYPR_CURSOR", "20")

hl.config({
    misc = {
        disable_hyprland_logo = true,
    },
    input = {
        touchpad = {
            natural_scroll = true,
        },
    },
})

local mainMod = "SUPER"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = i }))
end
