-- Use once dynamic cursor works.
-------------------------
---- DYNAMIC CURSORS ----
-------------------------
if hl.plugin.dynamic_cursors then
  hl.config({
    plugin = {
      dynamic_cursors = {
        enabled = true,
        mode = "tilt",
        threshold = 1,

        shake = {
          enabled = true,
        },
        hyprcursor = {
          nearest = 1,
          enabled = true,
          resolution = -1,
        }
      }
    }
  })
else
  -- same thing happened as on hymission
  -- hl.notification.create({text="Hyprland plugins : dynamic_cursors doesn't exist!", timeout=10000, icon=0})
end
