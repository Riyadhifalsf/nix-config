{config, pkgs, ...}:

{
  nixpkgs.config = {
    # IZINKAN PAKET UNFREE SEPERTI VS CODE
    allowUnfree = true;
  };
}