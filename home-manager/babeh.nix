{ config, pkgs, lib, ... }:

{
    imports = [
        ../modules/programs/gpg-agent.nix
        ../modules/programs/zsh/zsh.nix
        ./config/kde/plasma-home.nix
    ];

    home.stateVersion = "24.11";

    home.username = "babeh";
    home.homeDirectory = "/home/babeh";

    home.packages = with pkgs; [

        keepassxc
        bitwarden-desktop
        vscode
        spotify
        obsidian
        telegram-desktop
        bottles
        wpsoffice
        neovim
        arduino-ide
        planify
        codeblocksFull
        distrobox
        tree

        # Initial setup zsh packages
        zsh
        zsh-autosuggestions
        zsh-syntax-highlighting
        pkgs.zsh-powerlevel10k

        unrar

    ];

}
