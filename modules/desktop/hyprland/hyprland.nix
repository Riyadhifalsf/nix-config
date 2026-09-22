{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };

  programs.waybar.enable = true;
  programs.uwsm.enable = true;

  environment.systemPackages = with pkgs; [
    kitty wofi waybar mako hyprpaper hyprlock hypridle hyprpicker
    hyprpolkitagent wl-clipboard grim slurp brightnessctl playerctl
    pavucontrol networkmanagerapplet
  ];
}
