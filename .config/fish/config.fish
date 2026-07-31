if test -r /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME/.config"
set -gx EDITOR helix
set -gx VISUAL helix

alias dotgit='git --git-dir=$HOME/.dotfiles-backup --work-tree=$HOME'
alias pls='sudo'
alias bigfetch="fastfetch -c all.jsonc"
alias tinyfetch="fastfetch -c small.jsonc"
alias hx='helix'
# alias GreetmeBash="bash $XDG_CONFIG_HOME/fish/GreetMeInBash.sh"

# overwrite greeting
# potentially disabling fastfetch

# I tried delaying fish_greeting here so that it would fit, turns out it wasn't because of the window size lmao
# function fish_greeting
#     sleep 0.05 && fastfetch
# end
# #
# function fish_greeting
#     tinyfetch
# end
#

function fish_greeting
    GreetmeBash greet
end

thefuck --alias | source
