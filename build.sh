#!/run/current-system/sw/bin/bash

set -e

printf "\nGit diff...\n"
git diff

printf "\nShowing meld..."
meld configuration.nix /etc/nixos/configuration.nix
meld hardware-configuration.nix /etc/nixos/hardware-configuration.nix

cp configuration.nix /etc/nixos/configuration.nix
cp hardware-configuration.nix /etc/nixos/hardware-configuration.nix
nixos-rebuild switch
