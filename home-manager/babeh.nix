{ pkgs, ... }:

{
  home.stateVersion = "24.11";

  home.username = "babeh";
  home.homeDirectory = "/home/babeh";

  programs.zsh.enable = true;
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

        pkgs.android-studio
        arduino-ide
        planify
        codeblocksFull
        distrobox
  ];

  # contoh konfigurasi tambahan
  services.gpg-agent.enable = true;
}
