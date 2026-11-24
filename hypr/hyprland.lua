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
require("rules.shared")
require("startup.shared")

--find out which machine i am on
local function read_first_line(path)
    local f = io.open(path, "r")
    if not f then return nil end
    local line = f:read("*l")
    f:close()
    return line
end

local machines = {
    ["bb-8"]    = "machines.laptop",
    ["r2d2"]    = "machines.pc",
}

local host = read_first_line("/etc/hostname")
local machine = machines[host]

if not machine then
    -- unknown hostname: a battery means it's the laptop
    machine = read_first_line("/sys/class/power_supply/BAT0/capacity") and "machines.laptop" or "machines.pc"
end

require(machine or machines.generic)   -- turn on if used on pc
