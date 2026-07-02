local vars = require("variables")

hl.config({
    general = {
        layout = "master",
        allow_tearing = false,
        gaps_workspaces = vars.workspaceGaps,
        gaps_in = vars.windowGapsIn,
        gaps_out = vars.windowGapsOut,
        border_size = vars.windowBorderSize,
        col = {
            active_border = "rgba(a3a3a3bb)",
            inactive_border = "rgba(404040aa)",
        },
    },

    master = {
        new_status = "master",
        mfact = 0.50,
        orientation = "right",
        new_on_top = true,
    },
})
