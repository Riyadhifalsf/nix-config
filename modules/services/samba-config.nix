{
  services.samba = {
    enable = true;
    openFirewall = true;

    settings = {
      share = {
        path = "/run/media/babeh/Nix";
        browseable = "yes";
        writable = "yes";
        guestOk = "yes";
        createMask = "0777";
        directoryMask = "0777";
        validUsers = [ "babeh" ];
      };
    };
  };
}
