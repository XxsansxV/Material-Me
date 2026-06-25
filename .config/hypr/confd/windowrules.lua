--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "float-ze-emoji",
    match = { title = "^(HyprEmoji)$" },
    float = true,
})

hl.window_rule({
    name = "emoji-position-go",
    match = { title = "^(HyprEmoji)$"},
    move = "cursor_x-(window_w*0.05) cursor_y-(window_h*0.05)",
})

hl.window_rule({
    name = "Gwenview-float",
    match = { class = "org.kde.gwenview" },
    float = true,
})

hl.window_rule({
    name = "Flameshot-float",
    match = { class = "flameshot" },
    float = true,
})

hl.window_rule({
    name = "Waypaper-Float",
    match = { class = "waypaper" },
    float = true,
})

hl.window_rule({
    name = "Blueman-Float",
    match = { class = "blueman-manager" },
    float = true,
})

hl.layer_rule({
    name = "Wlogout-Blur",
    match = { class = "logout_dialog" },
    ignore_alpha = 0,
    blur = true,
})

hl.window_rule({
    name = "MPV-Float",
    match = { class = "mpv" },
    float = true,
})

hl.window_rule({
    name = "Harunanana",
    match = { class = "org.kde.haruna" },
    float = true,
})
