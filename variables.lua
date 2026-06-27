return {
    terminal = "ghostty",
    browser = "helium-browser",

    -- input
    touchpadDisableTyping = false,
    touchpadScrollFactor = 0.1,
    gestureFingers = 3,
    workspaceSwipeFingers = 4,
    gestureFingersMore = 5,

    -- blur
    blurEnabled = true,
    blurSpecialWs = false,
    blurPopups = true,
    blurInputMethods = true,
    blurSize = 8,
    blurPasses = 2,
    blurXray = false,

    -- workspace
    workspaceGaps = 18,
    windowGapsIn = 4,
    windowGapsOut = 18,
    singleWindowGapsOut = 24,

    -- window
    windowOpacity = 0.95,
    windowRounding = 15,
    windowBorderSize = 2,

    -- misc
    volumeStep = 5,
    cursorTheme = "Bibata-Modern-Ice",
    cursorSize = 20,
    suspendCommand = "systemctl suspend",

    -- keybindings
    ---- workspace
    kbMoveWinInWs = "SUPER + CTRL",
    kbGotoWs = "SUPER",
    kbNextWs = "CTRL + SUPER + right",
    kbPrevWs = "CTRL + SUPER + left",
    kbToggleSpecialWs = "SUPER + S",

    ---- ws groups
    kbMoveWinInWsGroup = "SUPER + SHIFT + CTRL",
    kbGoToWsGroup = "SUPER + SHIFT",
    kbGroupNext = "ALT + tab",
    kbGroupPrev = "CTRL + ALT + tab",
    kbUngroup = "SUPER + U",
    kbToggleGroup = "SUPER + comma",

    ---- window
    kbMoveWin = "SUPER + Z",
    kbResizeWin = "SUPER + X",
    kbWinPip = "SUPER + ALT + P",
    kbPinWin = "SUPER + P",
    kbWinFullscreen = "SUPER + F",
    kbWinBorderedFullscreen = "SUPER + ALT + F",
    kbToggleWinFloating = "SUPER + ALT + space",
    kbCloseWin = "SUPER + Q",

    ---- apps
    kbTerminal = "SUPER + return",
    kbBrowser = "SUPER + W"
}
