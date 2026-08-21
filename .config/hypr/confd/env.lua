-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("QT_QPA_PLATFORMTHEME", "kde")
hl.env("QT_QUICK_CONTROLS_STYLE", "org.kde.desktop")

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.env("XDG_MENU_PREFIX", "arch-")

hl.env("PATH", os.getenv("HOME") .. "/.local/bin:" .. (os.getenv("PATH") or ""))

hl.env("XMODIFIERS","@im=fcitx")
