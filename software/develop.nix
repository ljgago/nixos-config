{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # utils
    git

    # langs
    clang
    go
    nodejs
    python
    python3
    pypi2nix
    elixir
    rustup
    nim
    zig
  ];
}

