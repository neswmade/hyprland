local vars = require("variables")

hl.config({
    decoration = {
        rounding = vars.windowRounding,

        blur = {
            enabled = vars.blurEnabled,
            xray = vars.blurXray,
            special = vars.blurSpecialWs,
            ignore_opacity = true,
            new_optimizations = true,
            popups = vars.blurPopups,
            input_methods = vars.blurInputMethods,
            size = vars.blurSize,
            passes = vars.blurPasses,
        },
        shadow = {
            enabled = true,
            range = vars.shadowRange,
            render_power = vars.shadowRenderPower,
            offset = "0 3",
            color = "rgba(00000099)",
            color_inactive = "rgba(00000044)",
        },
    },
})
