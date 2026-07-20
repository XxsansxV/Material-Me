-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

local programs = require("confd.programs")

hl.on("hyprland.start", function ()
    hl.exec_cmd("systemctl --user start xdg-desktop-portal-hyprland")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("wl-paste --watch cliphist store &")
    hl.exec_cmd("swayosd-server")
    hl.exec_cmd("waybar")
    hl.exec_cmd("awww-daemon")
    -- hl.exec_cmd("sleep 1 && awww restore")
    hl.exec_cmd("fcitx5 -d --replace")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("systemctl --user start xdg-desktop-portal-wlr")
    -- hl.exec_cmd("mako")
    -- hl.exec_cmd("mako")        -- uncomment if mako isn't already a systemd user service
    -- hl.exec_cmd(programs.terminal)
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("fish -c 'GreetmeBash notify'")
    hl.exec_cmd("hyprpm reload")
    -- hl.exec_cmd("nwg-look -a")
end)
