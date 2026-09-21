-- ============================
-- HYPRLAND VARIABLES
-- ============================


-- Modifier key
mainMod = mainMod or "SUPER"


-- Applications

terminal = terminal or "kitty"

fileManager = fileManager or "thunar"

browser = browser or "vivaldi"

menu = menu or "wofi --show drun"


return {
    mainMod = mainMod,
    terminal = terminal,
    fileManager = fileManager,
    browser = browser,
    menu = menu,
}