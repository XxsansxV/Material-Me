-- Use once dynamic cursor works.
if hl.plugin.dynamic_cursors then
  hl.config({
    plugin = {
      dynamic_cursors = {
        enabled = true,
        mode = "tilt",
        threshold = 2,

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
  hl.notification.create({text="Hyprland plugins : dynamic_cursors doesn't exist!", timeout=5, color="red"})
end
