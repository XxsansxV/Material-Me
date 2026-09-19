local ok, colors = pcall(require, "confd.colors")
if not ok then
    colors = {
        primary = "ffffff",
        secondary = "ffffff",
        surface = "595959",
    }
end

hl.config({
  plugin = {
    hymission = {
      gesture_close_restores_focus = 0,
      pick_labels_enabled = 1,
      pick_labels_direct_activate = 1,

      window_decoration_enabled = 0,
      show_focus_indicator = 1,
      focus_selected_color = "rgba(" .. colors.primary .. "ee)",
    }
  }
})
