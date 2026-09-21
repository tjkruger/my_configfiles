hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + K", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd("sh -c 'kill -9 $(hyprctl activewindow -j | jq .pid)'"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({}))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind("CTRL + SHIFT + space", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("CTRL + SHIFT + right", hl.dsp.exec_cmd("playerctl next"))
hl.bind("CTRL + SHIFT + left", hl.dsp.exec_cmd("playerctl previous"))

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("systemctl suspend"))

hl.bind("ALT + Tab", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("ALT + SHIFT + Tab", hl.dsp.focus({ workspace = "e-1" }))