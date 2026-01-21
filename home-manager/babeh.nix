{ pkgs, ... }:

{
  home.stateVersion = "24.11";

  home.username = "babeh";
  home.homeDirectory = "/home/babeh";

  programs.zsh.enable = true;
  home.packages = with pkgs; [
    vim
    git
    htop
  ];

  # contoh konfigurasi tambahan
  services.gpg-agent.enable = true;
}
