# Material Me Dotfiles

## Premium English

<img width="1920" height="1080" alt="Material Me with a blue Frieren wallpaper" src="https://github.com/user-attachments/assets/43623cca-2c76-40c7-8aeb-ec6fb08d4f8c" />
<p align="center"><small>Material Me with a blue-ish Frieren wallpaper.</small></p>

<img width="1920" height="1080" alt="Wlogout with a pink accent" src="https://github.com/user-attachments/assets/28f2c42c-023f-4081-8679-36fa3fe89b71" />
<p align="center"><small>Wlogout with a pink accent.</small></p>

<img width="1920" height="1080" alt="Material Me with an orange accent" src="https://github.com/user-attachments/assets/2c435284-9550-4a06-8ae9-49f39143b989" />
<p align="center"><small>Material Me with an accent extracted from a Giyu Tomioka wallpaper.</small></p>

### A Foreword

Good my lord, or gentle traveller, whosoever hath by fortune or providence arrived upon this humble repository, I bid thee welcome.

Herein are gathered the dotfiles appertaining unto mine own **Hyprland Material Me** configuration. Though I make no bold claim that it surpasseth all others in beauty or craft, yet I confess that I hold it in no small esteem, for much labour and many an idle hour have been spent in its fashioning.

This collection containeth not the whole of my configuration, for certain pieces remain beyond its bounds. Nevertheless, it doth include the greater part of that whereupon the eye most commonly resteth, namely:

- **Hyprland**
- **Waybar**
- **SwayOSD**
- **Mako**
- **Wofi**
- **Wlogout**
- **Zen Browser**

The style thereof beareth some likeness unto **Google Material Design**, from whence the name *Material Me* doth spring. Yet this resemblance was not first conceived by deliberate design, but rather came to pass little by little whilst I adorned and refined the countenance of Waybar.

### Of Those Things Required

Before these dotfiles may serve thee faithfully, thou must first ensure that certain programs and utilities be present upon thy system. Lacking these, divers portions of the configuration may fail to appear or behave as intended.

Amongst them are Hyprland, Hypridle, Hyprlock, Waybar, SwayOSD, Mako, Wofi, Wlogout, `awww`, Waypaper, Matugen, Kitty, Dolphin, Zen Browser, Rofimoji, Cliphist, Flameshot, Hyprpicker, KDE Plasma, and sundry smaller contrivances upon which these depend.

Thou shalt also require **JetBrains Mono Nerd Font**, lest thy icons appear as cursed squares, and **Bibata Modern Classic**, shouldst thou desire the cursor as it was intended.

Should any be absent, thy package manager shall readily furnish them, though the manner thereof differeth according to the distribution thou dost employ. For the complete and less theatrical inventory, descend unto the normal-English account below.

### Of the Installation Thereof

Shouldst thou desire to make these dotfiles thine own, thou mayest proceed in the following wise:

1. First, ensure that the required dependencies have been installed upon thy system.
2. Thereafter, obtain this repository:

   ```bash
   git clone https://github.com/XxsansxV/Material-Me.git
   cd Material-Me
   ```

3. Copy such files as thou desirest into thy home directory, taking care not to overwrite aught of value unless thou hast first made due provision by way of a backup.
4. Amend those portions of the configuration peculiar unto thine own machine. Most especially shouldst thou examine `.config/hypr/confd/monitors.lua`, `.config/hypr/confd/programs.lua`, and `.config/waypaper/config.ini`.
5. Once these matters have been attended unto, begin a fresh Hyprland session or reload the affected components.

Should any part fail to behave as expected, be not overmuch dismayed. Dotfiles are creatures of many habits, and each system hath customs of its own. A small measure of adjustment is oft required before all things dwell together in harmony.

### A Necessary Admonition

Take heed before thou proceedest.

These dotfiles were devised and tested upon a laptop's **CachyOS** installation wherein both **Hyprland** and **KDE Plasma** were present. Though Hyprland be the compositor for which this configuration was chiefly fashioned, certain portions thereof do nevertheless lean upon the presence of KDE Plasma.

Most notable amongst these are Waybar actions that make use of `kcmshell6`, together with commands such as `plasma-apply-colorscheme`, invoked after Matugen hath extracted a new colour scheme.

Should thy system lack KDE Plasma, these components must either be altered to employ suitable alternatives or removed altogether. Failing this, thou mayest find that certain features refuse to function, whilst others may occasion errors or break entirely.

In brief: these dotfiles are best enjoyed upon a system where both **Hyprland** and **KDE Plasma** are installed. Those who venture otherwise should be prepared to adapt the configuration to the customs of their own environment.

### If Thou Wouldst Make Use Thereof

Should it please thee to fork this repository, to borrow from it, or to fashion it anew according to thine own liking, thou hast my leave, and I shall raise no objection.

Yet be thou warned that certain parameters are written expressly for mine own machine. Most notable amongst these are the monitor, wallpaper, program, and Zen-profile settings; therefore they must be amended to accord with the order of thine own system, lest confusion and mischief ensue.

### A Final Benediction

Take whatever thou wilt. Build upon it. Improve it. Make it thine own. I ask only that my name remain where these labours first began.

If these humble dotfiles should lighten thy labours, stir thy curiosity, or serve as the foundation of some greater work, then I shall reckon their publication well worthwhile.

Now go thy way in peace. May thy compositor remain steadfast, thy frame rate unwavering, thy configuration free of error, and thy rice ever worthy of admiration.

Godspeed.

---

## English

<img width="1920" height="1080" alt="Material Me with a blue Frieren wallpaper" src="https://github.com/user-attachments/assets/43623cca-2c76-40c7-8aeb-ec6fb08d4f8c" />
<p align="center"><small>Material Me with a blue-ish Frieren wallpaper.</small></p>

<img width="1920" height="1080" alt="Wlogout with a pink accent" src="https://github.com/user-attachments/assets/28f2c42c-023f-4081-8679-36fa3fe89b71" />
<p align="center"><small>Wlogout with a pink accent.</small></p>

<img width="1920" height="1080" alt="Material Me with an orange accent" src="https://github.com/user-attachments/assets/2c435284-9550-4a06-8ae9-49f39143b989" />
<p align="center"><small>Material Me with an accent extracted from a Giyu Tomioka wallpaper.</small></p>

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
