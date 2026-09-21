-- This is the converted Hyprland Lua entrypoint.
-- It keeps the structure of your old config while using the supported Lua API.

mainMod = mainMod or "SUPER"
terminal = terminal or "kitty"
fileManager = fileManager or "thunar"
browser = browser or "vivaldi"
menu = menu or "wofi --show drun"

require("core.variables")
require("core.environment")
require("core.input")
require("ui.animations")
require("ui.decorations")
require("ui.theme")
require("keybinds.shared")
require("startup.shared")
require("machines.laptop")  -- turn on if used on laptop
--require("machines.pc")    -- turn on if used on pc
