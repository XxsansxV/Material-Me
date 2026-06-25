source /usr/share/cachyos-fish-config/cachyos-config.fish

alias dotgit='git --git-dir=$HOME/.dotfiles-backup --work-tree=$HOME'
alias pls='sudo'
alias bigfetch="fastfetch -c all.jsonc"

# overwrite greeting
# potentially disabling fastfetch

# I tried delaying fish_greeting here so that it would fit, turns out it wasn't because of the window size lmao
# function fish_greeting
#     sleep 0.05 && fastfetch
# end

# thefuck --alias | source
