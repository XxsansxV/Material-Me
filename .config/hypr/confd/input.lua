---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.5,
            disable_while_typing = false,
        },
    },
    gestures = {
        workspace_swipe_distance = 700,
        workspace_swipe_cancel_ratio = 0.2,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true,  
    },
})

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})

-- hl.gesture({
--     fingers   = 3,
--     direction = "up",
--     action    = function()
--         hl.plugin.hymission.open()
--     end
-- })

-- hl.gesture({
--     fingers   = 3,
--     direction = "down",
--     action    = function()
--         hl.plugin.hymission.close()
--     end
-- })
-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
-- hl.device({
--     name        = "epic-mouse-v1",
--     sensitivity = -0.5,
-- })
--
hl.device({
    name = "asup1300:00-093a:2009-touchpad",
    sensitivity = 0.2,
    accel_profile = "adaptive",
})
