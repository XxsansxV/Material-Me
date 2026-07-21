# Material Me Dotfiles

## Premium English

Good my lord, gentle traveller, and unfortunate Wayland enthusiast: welcome.

Here lie the dotfiles of **Material Me**, a Hyprland rice forged from Material Design, anime wallpapers, KDE utilities, and an unreasonable number of hours spent adjusting border radii. It may improve thy desktop. It may also reveal that thy monitor is not called `eDP-1`.

Before copying anything, back up thy current configuration. Then install the dependencies, replace mine machine-specific paths with thine own, and pray that thy compositor remains steadfast, thy frame rate unwavering, and thy rice worthy of admiration.

Godspeed.

<img width="1920" height="1080" alt="Material Me with a blue Frieren wallpaper" src="https://github.com/user-attachments/assets/43623cca-2c76-40c7-8aeb-ec6fb08d4f8c" />
<p align="center"><small>Material Me with a blue-ish Frieren wallpaper.</small></p>

<img width="1920" height="1080" alt="Wlogout with a pink accent" src="https://github.com/user-attachments/assets/28f2c42c-023f-4081-8679-36fa3fe89b71" />
<p align="center"><small>Wlogout with a pink accent.</small></p>

<img width="1920" height="1080" alt="Material Me with an orange accent" src="https://github.com/user-attachments/assets/2c435284-9550-4a06-8ae9-49f39143b989" />
<p align="center"><small>Material Me with an accent extracted from a Giyu Tomioka wallpaper.</small></p>

---

## English

Material Me is a personal Hyprland dotfiles collection with a look inspired by Google Material Design. It includes configuration for:

- Hyprland, Hypridle, and Hyprlock
- Waybar and SwayOSD
- Mako, Wofi, and Wlogout
- Waypaper and Matugen-based color generation
- Kitty, Helix, Fish, Fastfetch, and Zen Browser theming

This is not a universal installer or a complete desktop environment. The files were built and tested on a CachyOS laptop running both Hyprland and KDE Plasma, and some settings are specific to that machine.

### Important warning

Do not copy the repository over your home directory without reviewing it first. Back up any existing dotfiles and copy only the components you want.

At minimum, review and change:

- `.config/hypr/confd/monitors.lua` — monitor name, resolution, scale, and position
- `.config/waypaper/config.ini` — wallpaper folders and selected wallpaper
- `.config/hypr/hyprpaper.conf` — replace the example wallpaper and adjust the monitor if needed
- `.config/zen/` — copy the Chrome customization into your own Zen profile if its directory name differs
- `.config/hypr/confd/programs.lua` — preferred terminal, browser, file manager, and other applications

### Dependencies

Core components:

- Hyprland with support for this repository's Lua configuration
- Hypridle and Hyprlock
- Waybar
- SwayOSD
- Mako
- Wofi and Wlogout
- Waypaper and `awww`
- Matugen

Applications and utilities referenced by the configuration:

- Kitty
- Dolphin
- Zen Browser
- KDE Plasma utilities, including `plasma-apply-colorscheme` and `kcm_shell6`
- Rofimoji
- Cliphist and `wl-clipboard`
- Flameshot
- Hyprpicker
- Playerctl
- jq
- PipeWire tools (`wpctl`)
- Fcitx5
- JetBrains Mono Nerd Font
- Bibata Modern Classic cursor theme

Package names vary by Linux distribution. Some modules can be disabled or changed if you do not want their corresponding application.

### Installation

1. Back up your current configuration.
2. Install the components you intend to use.
3. Clone the repository:

   ```bash
   git clone https://github.com/XxsansxV/Material-Me.git
   cd Material-Me
   ```

4. Review the machine-specific files listed above.
5. Copy the selected configuration directories into `~/.config/` and the helper scripts into `~/.local/bin/`.
6. Ensure the helper scripts in `~/.local/bin/` are executable and that directory is on your `PATH`:

   ```bash
   chmod +x ~/.local/bin/material-me-apply \
     ~/.local/bin/wofi-toggle \
     ~/.local/bin/zen-color-symlink
   ```

7. Start a fresh Hyprland session or reload the affected applications.

### KDE Plasma requirement

The configuration is designed for a system where KDE Plasma is installed alongside Hyprland. Color application and some Waybar actions call KDE tools. Without Plasma, those features need to be removed or replaced; the rest of the configuration may still be usable after adaptation.

### Notes

- The Waybar media module uses `playerctl` and `jq`. It stays empty when no compatible player is running.
- `zen-color-symlink` automatically finds the first Zen profile whose directory ends in `Default (release)`.

### License

Released under the [MIT License](LICENSE). You may use, modify, and redistribute these files under its terms. Attribution is appreciated.
