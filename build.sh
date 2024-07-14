#!/run/current-system/sw/bin/bash

cp configuration.nix /etc/nixos/configuration.nix
cp hardware-configuration.nix /etc/nixos/hardware-configuration.nix
nixos-rebuild switch
