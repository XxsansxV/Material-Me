if test -r /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME/.config"
set -gx EDITOR helix
set -gx VISUAL helix

alias pls='sudo'
alias bigfetch="fastfetch -c all.jsonc"
alias tinyfetch="fastfetch -c small.jsonc"

abbr -a dotgit 'git --git-dir=$HOME/.dotfiles-backup --work-tree=$HOME'
abbr -a hx helix
abbr -a py python

abbr -a update 'sudo cachyos-rate-mirrors && sudo pacman -Syu'
abbr -a cleanup 'sudo pacman -Rns (pacman -Qtdq)'
abbr -a grubup 'sudo grub-mkconfig -o /boot/grub/grub.cfg'
abbr -a fixpacman 'sudo rm /var/lib/pacman/db.lck'

abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'
abbr -a .... 'cd ../../..'
abbr -a ..... 'cd ../../../..'
abbr -a ...... 'cd ../../../../..'

abbr -a wget 'wget -c'
abbr -a tarnow 'tar -acf'
abbr -a untar 'tar -zxvf'

abbr -a mount-atlasfriend 'sudo mount -t ntfs-3g -o rw /dev/nvme0n1p4 /mnt/atlasfriend/
'

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

function fish_command_not_found
    echo -e "I don't think the command \033[;31m$argv[1]\033[0m exists bro"
end
