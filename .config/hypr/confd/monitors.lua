------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})

-- hl.monitor({
--     output   = "HDMI-A-1",
--     mode     = "preferred",
--     position = "auto",
--     scale    = "1",
--     mirror = "eDP-1"
-- })

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})
