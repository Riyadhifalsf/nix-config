{ config, pkgs, ... }:

{
    users.users.babeh = {
    isNormalUser = true;
    description = "Babeh";
    extraGroups = [ "networkmanager" "wheel" "kvm" "libvirtd" "adbuser">
    shell = pkgs.zsh;
  };

}
