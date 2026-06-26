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
    kbMoveWintoWs = "SUPER + CTRL",
    kbGotoWs = "SUPER",
    kbNextWs = "CTRL + SUPER + right",
    kbPrevWs = "CTRL + SUPER + left",
    kbToggleSpecialWs = "SUPER + S",

    ---- window
    kbMoveWindow = "SUPER + Z",
    kbResizeWindow = "SUPER + X",
    kbWindowPip = "SUPER + ALT + P",
    kbPinWindow = "SUPER + P",
    kbWindowFullscreen = "SUPER + F",
    kbWindowBorderedFullscreen = "SUPER + ALT + F",
    kbToggleWindowFloating = "SUPER + ALT + space",
    kbCloseWindow = "SUPER + Q",

    ---- apps
    kbTerminal = "SUPER + return",
    kbBrowser = "SUPER + W"
}
