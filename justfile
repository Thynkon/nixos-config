default: build

build:
  sudo nixos-rebuild switch --flake  ".#{{ `hostname` }}" 
