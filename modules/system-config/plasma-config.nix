{ config, pkgs, ... }:

{
  programs.plasma6.enable = true;

  home.file.".config/plasmashellrc".source =
    ../../kde-plasma-config/plasmashellrc;

  home.file.".config/plasma-org.kde.plasma.desktop-appletsrc".source =
    ../../kde-plasma-config/plasma-org.kde.plasma.desktop-appletsrc;

  home.file.".config/kdeglobals".source =
    ../../kde-plasma-config/kdeglobals;

  
}
