#!/run/current-system/sw/bin/bash

cp configuration.nix /etc/nixos/configuration.nix 
nixos-rebuild switch
