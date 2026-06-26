local vars = require("variables")

hl.config({
    general = {
        layout = "master",
        allow_tearing = false,
        gaps_workspace = vars.workspaceGaps,
        gaps_in = vars.windowGapsIn,
        gaps_out = vars.windowGapsOut,
        border_size = vars.windowBorderSize,
    },

    master = {
        new_status = "master",
        mfact = 0.50,
        orienttion = "right",
        new_on_top = true,
    },
})
