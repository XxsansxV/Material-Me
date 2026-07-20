# Material Me Dotfiles

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/43623cca-2c76-40c7-8aeb-ec6fb08d4f8c" />

## A Foreword

Good my lord, or gentle traveller, whosoever hath by fortune or providence arrived upon this humble repository, I bid thee welcome.

Herein are gathered the dotfiles appertaining unto mine own **Hyprland Material Me** configuration. Though I make no bold claim that it surpasseth all others in beauty or craft, yet I confess that I hold it in no small esteem, for much labour and many an idle hour have been spent in its fashioning.

This collection containeth not the whole of my configuration, for certain pieces remain beyond its bounds. Nevertheless, it doth include the greater part of that whereupon the eye most commonly resteth, namely:

* **Hyprland**
* **Waybar**
* **SwayOSD**
* **Mako**
* **Wofi**
* **Wlogout**

The style thereof beareth some likeness unto **Google Material Design**, from whence the name *Material Me* doth spring. Yet this resemblance was not first conceived by deliberate design, but rather came to pass little by little whilst I adorned and refined the countenance of Waybar.



## Of Those Things Required

Before these dotfiles may serve thee faithfully, thou must first ensure that certain programs and utilities be present upon thy system. Lacking these, divers portions of the configuration may fail to appear or behave as intended.

Amongst them are:

- **Hyprland**
- **Hymission for Hyprland** 
- **Waybar**
- **SwayOSD**
- **Mako**
- **Wofi**
- **Wlogout**
- **awww**
- **Waypaper**
- **Matugen**
- **Kitty**
- **Rofimoji**
- **Cliphist**
- **Jetbrains Mono NFP** (For the proper rendering icons)
- Any further utilities whereupon any of these utilities may depend.

Should any be absent, thy package manager shall readily furnish them, though the manner thereof differeth according to the distribution thou dost employ.

## A Necessary Admonition

Take heed before thou proceedest.

These dotfiles were devised and tested upon a **CachyOS** installation wherein both **Hyprland** and **KDE Plasma** were present. Though Hyprland be the compositor for which this configuration was chiefly fashioned, certain portions thereof do nevertheless lean upon the presence of KDE Plasma.

Most notable amongst these are Waybar modules that make use of **kcm_shell6**, together with sundry commands (such as those executed by **Matugen** after the generation of a new colour scheme) which invoke KDE utilities.

Should thy system lack KDE Plasma, these components must either be altered to employ suitable alternatives or removed altogether. Failing this, thou mayest find that certain features refuse to function, whilst others may occasion errors or break entirely.

In brief: these dotfiles are best enjoyed upon a system where both **Hyprland** and **KDE Plasma** are installed. Those who venture otherwise should be prepared to adapt the configuration to the customs of their own environment.

## If Thou Wouldst Make Use Thereof

Should it please thee to fork this repository, to borrow from it, or to fashion it anew according to thine own liking, thou hast my leave, and I shall raise no objection.

Yet be thou warned that certain parameters are written expressly for mine own machine. Most notable amongst these are those found within **.config/hypr/confd/monitors.lua** and **.config/waypaper/config.ini**, and therefore they must be amended to accord with the order of thine own system, lest confusion and mischief ensue.

## A Final Benediction

If these humble dotfiles should lighten thy labours, stir thy curiosity, or serve as the foundation of some greater work, then I shall reckon their publication well worthwhile.

Now go thy way in peace. May thy compositor remain steadfast, thy frame-rate unwavering, thy configuration free of error, and thy rice ever worthy of admiration.

Godspeed.
