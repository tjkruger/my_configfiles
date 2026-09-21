-- Laptop-specific media, brightness, lock, and utility keys.
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })

hl.bind("XF86WLAN", hl.dsp.exec_cmd("nmcli radio wifi $( [ \"$(nmcli radio wifi)\" = \"enabled\" ] && echo off || echo on )"))
hl.bind("XF86Bluetooth", hl.dsp.exec_cmd("rfkill toggle bluetooth"))

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("swaylock --screenshots --effect-blur 5x5"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("mate-system-monitor"))
hl.bind("XF86Tools", hl.dsp.exec_cmd("code ~/.config/hypr"))

-- TODO: if you want the lid-switch behavior to be stricter, add a dedicated event handler here.