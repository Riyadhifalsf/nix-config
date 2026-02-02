{ config, pkgs, lib, ... }:

{
    imports = [
        ../modules/programs/gpg-agent.nix
        ../modules/programs/zsh/zsh.nix
        ./desktop-kde-applications.nix
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
        zsh
        neovim
        pkgs.google-chrome
        
        arduino-ide
        planify
        codeblocksFull
        distrobox

        zsh-autosuggestions
        zsh-syntax-highlighting

        tree
        pkgs.zsh-powerlevel10k

    ];

}
