---------------------
---- KEYBINDINGS ----
---------------------

local programs = require("confd.programs")

local mainMod = "SUPER" -- Sets Meta key as main modifier


--- PROGRAM LAUNCHING KEYBINDS

-- Applications
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(programs.browser))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager))

-- Wofi-related
hl.bind("ALT + space", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/wofi-toggle drun wofi 'wofi --show drun'"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/wofi-toggle run wofi 'wofi --show run --term=" .. programs.terminal .. "'"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/wofi-toggle makohistory wofi 'bash " .. os.getenv("HOME") .. "/.config/mako/MakoWofiCrossover.sh'"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/wofi-toggle clip wofi 'cliphist list | wofi --dmenu | cliphist decode | wl-copy'"))
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/wofi-toggle emoji wofi '".. programs.emojipicker .. "'"))

-- Others
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("print", hl.dsp.exec_cmd(programs.screenshot .. " gui"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("bash -lc waypaper"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind("CTRL + ALT + end", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/bin/wofi-toggle logout wlogout wlogout"))


--- WINDOW MANAGER KEYBINDS

-- regular
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ "fullscreen", toggle}))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- move windowd with mainMod + shift + hjkl
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + j",    hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + k",  hl.dsp.focus({ direction = "up" }))

-- Mouse window management
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e+1" }))

-- Special workspaces
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- hymissions thingn yaayyyyy (reenable sometimes again)
hl.bind(mainMod .. " + W", hl.plugin.hymission.toggle)


--- MULTIMEDIA KEYS

-- SwayOSD-specific config
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("swayosd-client --output-volume raise"),  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("swayosd-client --output-volume lower"),  { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true, repeating = false })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("swayosd-client --brightness raise"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"),   { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd([[sh -c "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle && swayosd-client --input-volume mute-toggle"]]), { locked = true, repeating = false })

-- Media control, Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- (OLD) Laptop multimedia keys for volume and LCD brightness
-- hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
-- hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
-- hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
-- hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
-- 


