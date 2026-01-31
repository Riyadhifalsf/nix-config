{ config, pkgs, ... }: 

{

   boot.loader = {
      efi.canTouchEfiVariables = true;
      timeout = 10;  
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;

        theme = "${
          (pkgs.fetchFromGitHub {
            owner = "semimqmo";
            repo = "sekiro_grub_theme";
            rev = "1affe05f7257b72b69404cfc0a60e88aa19f54a6";
            hash = "sha256-wTr5S/17uwQXkWwElqBKIV1J3QUP6W2Qx2Nw0SaM7Qk=";
          })
        }/Sekiro";
    };
  };
		

}
