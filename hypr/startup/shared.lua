-- Shared startup
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("waybar -c ~/.config/hypr/services/shared/waybar/config.jsonc -s ~/.config/hypr/services/shared/waybar/style.css")
end)